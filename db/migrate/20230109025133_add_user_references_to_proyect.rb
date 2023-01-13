class AddUserReferencesToProyect < ActiveRecord::Migration[7.0]
  def change
    add_reference :proyects, :user, null: false, foreign_key: true
  end
end
