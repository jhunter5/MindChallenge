class AddNewColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :english_level, :string
    add_column :users, :knowledge, :text
    add_column :users, :cv_link, :string
  end
end
