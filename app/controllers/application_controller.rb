class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do |error|
    render json: {
      error: error.to_s
    }, status: :not_found
  end

  errors = [ActiveRecord::RecordInvalid, ArgumentError]
  errors.each do |error|
    rescue_from error do |message|
      render json: {
        error: message.to_s
      }, status: :bad_request
    end
  end
end
