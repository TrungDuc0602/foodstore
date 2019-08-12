class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price, :precision => 8, :scale => 2
      t.string :ID_typefood
      t.string :image_url

      t.timestamps
    end
  end
end
