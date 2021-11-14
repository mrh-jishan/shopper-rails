class AddressTypesController < ApplicationController
  def index
    render :json => AddressType.all
  end
end
