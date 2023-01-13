require 'rails_helper'

RSpec.describe Proyect, type: :model do
  describe 'validation for proyect models' do
    subject { build(:proyect) }

    it 'validar si el proyecto tiene un nombre ' do
      should validate_presence_of(:proyect_name)
    end

    it 'validar si el nombre del proyecto es unico ' do
      should  validate_uniqueness_of(:proyect_name)
    end

    it 'validar si el proyecto tiene un cliente ' do
      should validate_presence_of(:client_name)
    end

    

  end
end
