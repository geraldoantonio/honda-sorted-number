class ChangeIndexToConsortiumPlans < ActiveRecord::Migration[7.0]
  def change
    remove_index :consortium_plans, :name
    add_index :consortium_plans, [:name, :installments], unique: true
  end
end
