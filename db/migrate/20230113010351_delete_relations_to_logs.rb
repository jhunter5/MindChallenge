class DeleteRelationsToLogs < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :logs, column: :user_id
    remove_foreign_key :logs, column: :proyects_id

    remove_column :logs, :user_id
    remove_column :logs, :proyects_id
  end
end
