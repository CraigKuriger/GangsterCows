class CreateCows < ActiveRecord::Migration
  def change
    create_table :cows do |t|
      t.string :name
      t.string :heading
      t.text :description
      t.string :image_url
      t.binary :image
      t.float :money
      t.timestamps null: false
    end
  end
end
