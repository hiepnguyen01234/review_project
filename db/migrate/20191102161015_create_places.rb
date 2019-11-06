class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.text :title
      t.text :description
      t.text :address
      t.integer :type_id
      t.integer :city_id

      t.timestamps
    end
  end
end
