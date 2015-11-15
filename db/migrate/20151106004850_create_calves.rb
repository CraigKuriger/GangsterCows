class CreateCalves < ActiveRecord::Migration
  def change
    create_table :calves do |t|
      t.string :name
      t.references :cow, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
