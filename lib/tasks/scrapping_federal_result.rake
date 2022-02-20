# frozen_string_literal: true

namespace :webscraper_federal_result do
  task run: :environment do
    puts 'Running scrapping federal result'

    results = Webscraper::FederalResult.by_lotoloto
    FederalResult.create(results) unless results.empty?

    print_results(results)
    puts 'Finished scrapping federal result'
  end

  private

  def print_results(results)
    puts '-------------------------------------'
    results.each do |result|
      puts "Concurse: #{result[:concurse]}"
      puts "Date: #{result[:date]}"
      puts "Result: #{result[:result]}"
      puts '-------------------------------------'
    end
  end
end
