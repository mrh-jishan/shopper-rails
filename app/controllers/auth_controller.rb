class AuthController < ApplicationController
  skip_before_action :authenticate_request

  def login
    command = AuthenticateUser.call(params[:email], params[:password])
    if command.success?
      render json: {auth_token: command.result}
    else
      render json: {error: command.errors}, status: :unauthorized
    end
  end

  def register
    @user = User.new(user_params)
    @user.roles <<  Role.find_by(role: 'USER')
    if @user.save
      response = {message: 'User created successfully'}
      render json: response, status: :created
    else
      render json: {error: @user.errors}, status: :bad_request
    end
  end

  private

  def user_params
    params.permit(
        :first_name,
        :last_name,
        :email,
        :password
    )
  end
end