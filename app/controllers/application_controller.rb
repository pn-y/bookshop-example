class ApplicationController < ActionController::Base
  def q_param
    params[:q] || {}
  end
end
