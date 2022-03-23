# frozen_string_literal: true

module SlackNotifications
  class SendMessageFromWebhook < ApplicationService
    def initialize(webhook_url, message) # rubocop:disable Lint/MissingSuper
      @message = message
      @webhook_url = webhook_url
    end

    def call
      create_result(true, nil, send_notification)
    rescue StandardError => e
      create_result(false, e.message, nil)
    end

    private

    attr_reader :message, :webhook_url

    def send_notification
      headers = { 'Content-Type' => 'application/json' }
      HTTParty.post(webhook_url, body: { text: message }.to_json, headers: headers)
    end
  end
end
