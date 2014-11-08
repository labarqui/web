class Api::BaseController < ActionController::Base

  rescue_from Exception, :with => :exception_rescue

  protected
  def exception_rescue(exception)
    logger.error exception
    render(json: {
      status: :error,
      response: exception.to_s
    }, status: :internal_server_error)
  end

  def logger
    @@logger ||= Logger.new("#{Rails.root}/log/api.log")
  end

end
