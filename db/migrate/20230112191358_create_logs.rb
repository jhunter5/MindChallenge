class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :proyects, null: false, foreign_key: true
      t.datetime :happened_at
      t.text :description

      t.timestamps
    end
  end
end
