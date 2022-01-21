class BusinessController < ApplicationController

  def index
    @business = {"quotation": "The secret of getting ahead is getting started."}
    json_response(@business)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end