require 'rails_helper'

RSpec.describe Log, type: :model do
  describe 'validations for logs model' do
    subject { build(:log) }

    #Validations about the proyect's db structure

    it 'validar si el proyecto tiene la estructura correcta ' do
      should have_db_column(:happened_at).of_type(:datetime).with_options(null: false)
      should have_db_column(:description).of_type(:text).with_options(null: false)
      should have_db_column(:role).of_type(:integer).with_options(null: false)
      should have_db_column(:logeable).of_type(:string).with_options(null: false)
    end
    
    it 'validar que el parametro logs solo reciba valores deseados' do
      should validate_inclusion_of(:logeable).in_array(['error', 'movement'])
    end

    it 'validar que el parametro role solo reciba valores deseados' do
      should validate_inclusion_of(:role).in_array([0, 1])
    end


    #Validations about columnss presence

    it 'validar si existe la fecha de ocurrencia ' do
      should validate_presence_of(:happened_at)
    end
    it 'validar si la descripcion existe ' do
      should validate_presence_of(:description)
    end
    it 'validar si el role existe ' do
      should validate_presence_of(:role)
    end
    it 'validar si el parametro logeable existe ' do
      should validate_presence_of(:logeable)
    end

    #Validations about numericality
    it 'Validate if role is numericality  ' do
      should validate_numericality_of(:role)
    end
  
  end
end
