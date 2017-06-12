class CreateGigs < ActiveRecord::Migration[5.0]
  def change
    create_table :gigs do |t|
      t.text :artist
      t.text :city
      t.text :state
      t.text :venue
      t.text :date
      t.text :songs
      t.integer :user_id
      t.text :latitude
      t.text :longitude

      t.timestamps
    end
  end
end
