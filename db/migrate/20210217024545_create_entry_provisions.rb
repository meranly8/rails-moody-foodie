class CreateEntryProvisions < ActiveRecord::Migration[6.1]
  def change
    create_table :entry_provisions do |t|
      t.references :entry, foreign_key: true
      t.references :provision, foreign_key: true
      t.integer :amount
      t.string :unit
      t.boolean :homemade
      t.string :description

      t.timestamps
    end
  end
end
