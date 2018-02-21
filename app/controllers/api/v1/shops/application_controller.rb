class Api::V1::Shops::ApplicationController < Api::V1::ApplicationController
  private

  def resource_shop
    @shop ||= Shop.find(params[:shop_id])
  end
end
