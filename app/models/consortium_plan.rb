# frozen_string_literal: true

class ConsortiumPlan < ApplicationRecord
  validates :name, uniqueness: { scope: :installments }, presence: true
  validates :installments, :person_count, presence: true

  scope :order_by_name_and_installments, -> { order(:name, :installments) }

  def self.person_count_for_select
    all.order_by_name_and_installments.map do |plan|
      ["#{plan.name} - (Participantes: #{plan.person_count} em #{plan.installments} meses)", plan.person_count]
    end
  end
end
