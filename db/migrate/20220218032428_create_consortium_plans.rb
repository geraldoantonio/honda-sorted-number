class CreateConsortiumPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :consortium_plans do |t|
      t.string :name, null: false
      t.integer :person_count, null: true
      t.integer :installments, null: true

      t.timestamps
    end

    add_index :consortium_plans, :name, unique: true
  end
end
