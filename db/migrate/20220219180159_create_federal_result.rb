class CreateFederalResult < ActiveRecord::Migration[7.0]
  def change
    create_table :federal_results do |t|
      t.integer :concurse, null: false
      t.date :date, null: false
      t.integer :result, null: false

      t.timestamps
    end

    add_index :federal_results, :concurse, unique: true
  end
end
