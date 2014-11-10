class SensorController < ApplicationController
  def index
    @measurements_json = Measurements.where(created_at: Time.now.beginning_of_day..Time.now.end_of_day).to_json
  end
end
