class AddRoleToLogs < ActiveRecord::Migration[7.0]
  def change
    add_column :logs, :role, :integer, default: 0, null: false
  end
end
