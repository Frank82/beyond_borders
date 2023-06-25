class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :destination
      t.references :user, null: false, foreign_key: true
      t.string :theme
      t.date :date
      t.integer :budget

      t.timestamps
    end
  end
end
