class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :title
      t.text    :description
      t.integer :price_in_cents
      t.integer :quantity_available

      t.timestamps null: false
    end
  end
end
