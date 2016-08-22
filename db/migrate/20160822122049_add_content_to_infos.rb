class AddContentToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :content, :string
  end
end
