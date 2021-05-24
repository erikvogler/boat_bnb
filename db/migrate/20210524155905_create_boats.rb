class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.text :description
      t.text :pictures_url
      t.string :location
      t.float :price_per_night
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
