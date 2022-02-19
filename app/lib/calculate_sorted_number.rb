# frozen_string_literal: true

module CalculateSortedNumber
  def self.call(params)
    loteric_number = params[:loteric_number].to_f
    person_count = params[:person_count].to_i

    result = loteric_number / person_count
    result = format('%.4f', result)
    result = result.split('.')[1].to_i * person_count
    result.to_s.slice(0, 3).to_i
  end
end
