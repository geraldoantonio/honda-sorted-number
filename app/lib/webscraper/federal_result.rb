# frozen_string_literal: true

module Webscraper
  module FederalResult
    LOTOLOTO_FEDERAL_RESULT_URL = 'https://www.lotoloto.com.br/sorteios/federal/'

    def self.by_lotoloto # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
      uri_parse = URI.parse(LOTOLOTO_FEDERAL_RESULT_URL)
      nokogiri_doc = Nokogiri::HTML(uri_parse.open)

      federal_result = []

      multiple_sorted = nokogiri_doc.css('div.sorteios.multiplo')
      multiple_sorted.each do |result|
        itens = result.css('div.item')
        itens.each do |item|
          federal_result << {
            concurse: item.css('div.titulo').text.strip.split.last,
            date: item.css('div.data').text.strip,
            result: item.css('div.numeros > .wrapExtracao:nth-child(1) > .num').text.strip
          }
        end
      end

      federal_result
    end
  end
end
