class AddNullFlagToProyect < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:proyects, :proyect_name, false)
    change_column_null(:proyects, :client_name, false)
  end
end
