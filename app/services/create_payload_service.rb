# frozen_string_literal: true

class CreatePayloadService
  attr_reader :payload

  def initialize(params)
    @params = params
  end

  def call
    @payload = @params[:type].safe_constantize.create!(@params.except(:type))

    send_slack_spam_notification if spam_notification_payload?
  end

  private

  def spam_notification_payload?
    @payload.is_a?(SpamNotification)
  end

  def send_slack_spam_notification
    client = Slack::Web::Client.new

    client.chat_postMessage(
      channel: '#spam-notifications',
      text: "A spam notification was received from the following email: #{@payload[:email]}",
      as_user: true
    )
  end
end
