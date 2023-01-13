class AddAddedAndDeletedToTeams < ActiveRecord::Migration[7.0]
  def change
    add_column :teams , :added_at , :datetime
    add_column :teams , :deleted_at , :datetime
  end
end
