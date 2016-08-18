class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :photos
      t.references :type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
