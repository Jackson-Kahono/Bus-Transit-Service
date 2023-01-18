class ApplicationController < ActionController::Base
    # skip_before_action :verify_authenticity_token

    # include JWToken

    # def encode_token(payload)
    #     JWToken.encode(payload, 'my_s3cr3t')
    # end

    # skip_before_action :verify_authenticity_token


    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def render_unprocessable_entity_response(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
end
