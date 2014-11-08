class Api::SensorController < Api::BaseController
  def create
    result = Measurements.create_from_params(params)
    render json: {
      status: result ? :ok : :error,
      rendered_at: Time.now
    }, status: :ok
  end
end
