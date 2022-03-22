# frozen_string_literal: true

module LoteriasCaixa
  BASE_URL_API = 'https://servicebus2.caixa.gov.br/portaldeloterias/api'
  FEDERAL_PATH = '/federal'

  module FederalResult
    def self.last
      by_concurse
    end

    def self.by_concurse(concurse = nil)
      response = HTTParty.get("#{BASE_URL_API}#{FEDERAL_PATH}/#{concurse}")
      return unless response.code == 200

      format_result(response)
    end

    def self.format_result(result)
      {
        concurse: result['numero'],
        date: result['dataApuracao'],
        result: result['listaDezenas'].first
      }
    end
  end
end
