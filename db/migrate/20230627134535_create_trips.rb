class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :destination
      t.string :theme
      t.date :date
      t.string :user_id

      t.timestamps
    end
  end
end
