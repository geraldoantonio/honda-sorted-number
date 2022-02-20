# frozen_string_literal: true

namespace :webscraper_federal_result do
  task run: :environment do
    results = Webscraper::FederalResult.by_lotoloto
    FederalResult.create(results) unless results.empty?
  end
end
