class Measurements < ActiveRecord::Base

  def self.create_from_params(params)
    return if params.blank?

    success = 0

    temp = params[:temperatura]
    if !temp.blank?
      success += 1 if Measurements.create(value: temp, sensor_type: 0)
    end

    hum = params[:humedad]
    if !hum.blank?
      success += 1 if Measurements.create(value: hum, sensor_type: 1)
    end

    return success
  end

end
