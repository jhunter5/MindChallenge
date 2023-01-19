require 'rails_helper'

RSpec.describe Proyect, type: :model do
  describe 'validation for proyect models' do
    subject { build(:proyect) }

    #Validations about the proyect's db structure

    it 'validar si el proyecto tiene la estructura correcta ' do
      should have_db_column(:proyect_name).of_type(:string).with_options(null: false)
      should have_db_column(:client_name).of_type(:string).with_options(null: false)
      should have_db_column(:user_id).of_type(:integer)
    end

    #Validations about the proyect's name

    it 'validar si el proyecto tiene un nombre ' do
      should validate_presence_of(:proyect_name)
    end

    it 'validar si el nombre del proyecto es unico ' do
      should  validate_uniqueness_of(:proyect_name)
    end

    #Validations about the proyect's client

    it 'validar si el proyecto tiene un cliente ' do
      should validate_presence_of(:client_name)
    end
    
    #Validations about the proyect's user_id, and associations with user model

    it 'validar si el proyecto tiene un user_id ' do
      should validate_presence_of(:user_id)
    end

    it 'Validate if user_id is numericality  ' do
      should validate_numericality_of(:user_id)
    end

    it 'validar si el proyecto tiene asociacion con el modelo usuarios ' do
      should belong_to(:user)
    end

    #Validations about the proyect's associations

    it 'validar si el proyecto tiene asociacion has_many con teams ' do
      should have_many(:teams)
    end

    it 'validar si el proyecto tiene asociacion has_many con users ' do
      should have_many(:users)
    end

    

  end
end
