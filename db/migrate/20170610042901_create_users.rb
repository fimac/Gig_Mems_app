class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :username
      t.text :first_name
      t.text :last_name
      t.text :username
      t.text :email
      t.text :link
      t.text :image
      t.text :password_digest
      t.text :building_number
      t.text :street
      t.text :city
      t.text :state
      t.text :country
      t.text :latitude
      t.text :longitude

      t.timestamps
    end
  end
end
