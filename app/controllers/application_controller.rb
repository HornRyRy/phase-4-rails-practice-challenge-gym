class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def record_invalid(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
