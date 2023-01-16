class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def render_unprocessable_entity_response(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
end
