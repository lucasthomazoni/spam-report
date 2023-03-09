# frozen_string_literal: true

class PayloadsController < ApplicationController
  before_action :validate_type, only: :create

  def create
    CreatePayloadService.new(sanitized_params).call

    head :no_content
  end

  private

  def payload_params
    params.permit(
      :RecordType,
      :Type,
      :TypeCode,
      :Name,
      :Tag,
      :MessageStream,
      :Description,
      :Email,
      :From,
      :BouncedAt
    )
  end

  def sanitized_params
    return unless params

    payload_params.to_h.transform_keys(&:underscore)
  end

  def validate_type
    return if %w[SpamNotification HardBounce].include?(sanitized_params[:type])

    render json: { error: 'Invalid type' }, status: :unprocessable_entity
  end
end
