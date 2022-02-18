class ConsortiumPlan < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :installments, :person_count, presence: true

  def self.person_count_for_select
    all.map { |plan| ["#{plan.name} - (Participantes: #{plan.person_count} em #{plan.installments} meses)", plan.person_count] }
  end
end
