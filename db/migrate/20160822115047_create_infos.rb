class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :title
      t.references :product, index: true, foreign_key: true
      t.string :icon

      t.timestamps null: false
    end
  end
end
