class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :img_url
      t.string :category
      t.references :store, index: true, foreign_key: true
    end
  end
end
