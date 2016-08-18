class CreatePromos < ActiveRecord::Migration
  def change
    create_table :promos do |t|
      t.string :title
      t.string :description
      t.string :photos
      t.date :start
      t.date :end
      t.references :type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
