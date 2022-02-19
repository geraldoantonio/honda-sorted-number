# frozen_string_literal: true

class FederalResult < ApplicationRecord
  validates :concurse, presence: true, uniqueness: true
  validates :date, :result, presence: true

  def to_s
    "[#{result.to_s.rjust(6, '0')}] - Concurso #{concurse} - #{date.strftime('%d/%m/%Y')}"
  end

  def self.result_for_select
    all.order(concurse: :desc).limit(7).map do |federal_result|
      [federal_result.to_s, federal_result.result]
    end
  end
end
