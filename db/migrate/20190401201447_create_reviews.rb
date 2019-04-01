class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :user_name
      t.string :user_image, default: 'https://i.imgur.com/MhN5kCx.jpg'
      t.string :text
      t.datetime :time_created
      t.integer :rating
      t.integer :place_id

      t.timestamps
    end
  end
end
