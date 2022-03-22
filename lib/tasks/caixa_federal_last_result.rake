# frozen_string_literal: true

namespace :caixa_federal_last_result do
  task run: :environment do
    puts 'Running get caixa federal result'

    last_federal_result = LoteriasCaixa::FederalResult.last
    FederalResult.create(last_federal_result) unless last_federal_result.empty?

    print_result(last_federal_result)
    puts 'Finished get caixa federal result'
  end

  private

  def print_result(federal_result)
    puts '-------------------------------------'
    puts "Concurse: #{federal_result[:concurse]}"
    puts "Date: #{federal_result[:date]}"
    puts "Result: #{federal_result[:result]}"
    puts '-------------------------------------'
  end
end
