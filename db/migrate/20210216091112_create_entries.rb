class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.date :date, default: Time.now
      t.string :end_of_day_mood
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
