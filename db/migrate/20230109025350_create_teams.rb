class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.references :user, null: false, foreign_key: true
      t.references :proyect, null: false, foreign_key: true
    end
  end
end
