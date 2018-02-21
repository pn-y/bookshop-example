class Api::V1::ShopsController < Api::V1::ApplicationController
  def index
    q = Shop.ransack(q_param).result(distinct: true)

    render json: q, adapter: :json
  end
end
