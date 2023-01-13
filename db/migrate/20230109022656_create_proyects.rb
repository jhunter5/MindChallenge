class CreateProyects < ActiveRecord::Migration[7.0]
  def change
    create_table :proyects do |t|
      t.string :proyect_name
      t.string :client_name
      t.timestamps
    end
  end
end
