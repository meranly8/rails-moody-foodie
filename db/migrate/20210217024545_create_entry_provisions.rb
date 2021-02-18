class CreateEntryProvisions < ActiveRecord::Migration[6.1]
  def change
    create_table :entry_provisions do |t|
      t.integer :entry_id, foreign_key: true
      t.integer :provision_id
      t.integer :amount
      t.string :unit
      t.boolean :homemade
      t.string :description

      t.timestamps
    end
  end
end
