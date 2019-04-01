class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :category
      t.string :contact
      t.string :location
      t.integer :rating
      t.datetime :time
      t.string :photos, array: true, default: []
      t.integer :user_id
      t.integer :timetable_id

      t.timestamps
    end
  end
end
