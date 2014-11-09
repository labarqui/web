class Api::SensorController < Api::BaseController
  def index
    render json: {
      status: :ok,
      rendered_at: Time.now,
      data: Measurements.where(created_at: Time.now.beginning_of_day..Time.now.end_of_day)
    }, status: :ok
  end

  def create
    result = Measurements.create_from_params(params)
    render json: {
      status: result > 0 ? :ok : :error,
      count: result,
      rendered_at: Time.now
    }, status: :ok
  end
end
