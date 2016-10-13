class CreatePowers < ActiveRecord::Migration
  def change
    create_table :powers do |t|
      t.boolean :wind
      t.boolean :cold
      t.boolean :hot
      t.boolean :humidity
      t.boolean :energysaver
      t.boolean :taxsaver
      t.boolean :insects
      t.boolean :security
      t.boolean :sun
      t.boolean :rain
      t.boolean :inside
      t.boolean :outside
      t.boolean :certification

      t.timestamps null: false
    end
  end
end
