class CreateAdvertisements < ActiveRecord::Migration[5.2]
  def change
    create_table :advertisements do |t|
      t.text :title
      t.text :content
      t.references :user, foreign_key: true
      t.references :place, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
