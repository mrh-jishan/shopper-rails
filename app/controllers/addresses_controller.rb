class AddressesController < ApplicationController
  def index
    render :json => @current_user.addresses
  end

  def create

  end
end
