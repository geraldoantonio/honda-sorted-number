# frozen_string_literal: true

module Notifications
  class FederalResultCreatedJob < ApplicationJob
    SLACK_WEBHOOK_URL = ENV['SLACK_WEBHOOK_URL']

    def perform(federal_result_id)
      @federal_result = FederalResult.find(federal_result_id)
      notification_slack_channel
    end

    private

    attr_reader :federal_result

    def notification_slack_channel
      SlackNotifications::SendMessageFromWebhook.call(SLACK_WEBHOOK_URL, message)
    end

    def message
      "Novo resultado: #{federal_result&.to_s}"
    end
  end
end
