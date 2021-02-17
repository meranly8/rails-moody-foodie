class CreateProvisions < ActiveRecord::Migration[6.1]
  def change
    create_table :provisions do |t|
      t.string :name
      t.string :provision_type
      t.integer :approx_cals_per_serving

      t.timestamps
    end
  end
end
