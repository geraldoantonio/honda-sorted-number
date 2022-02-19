# frozen_string_literal: true

class FederalResult < ApplicationRecord
  validates :concurse, presence: true, uniqueness: true
  validates :date, :result, presence: true

  def self.result_for_select
    all.order(concurse: :desc).limit(7).map do |federal_result|
      ["[#{federal_result.result.to_s.rjust(6, '0')}] - Concurso #{federal_result.concurse} - #{federal_result.date.strftime('%d/%m/%Y')}", federal_result.result]
    end
  end
end
