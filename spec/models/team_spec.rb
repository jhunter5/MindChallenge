require 'rails_helper'

RSpec.describe Team, type: :model do
  describe 'validation for team models' do
    subject { build(:team) }

    #Validations about the Team's db structure

    it 'validar si el equipo tiene la estructura correcta ' do
      should have_db_column(:user_id).of_type(:integer).with_options(null: false)
      should have_db_column(:proyect_id).of_type(:integer).with_options(null: false)
      should have_db_index(:user_id)
      should have_db_index(:proyect_id)
    end

    #Validations abour the Team's ids
    it 'Validate if user_id its present ' do
      should validate_presence_of(:user_id)
    end

    it 'Validate if user_id numericality  ' do
      should validate_numericality_of(:user_id)
    end

    it 'Validate if proyect_id its present ' do
      should validate_presence_of(:proyect_id)
    end

    it 'Validate if user_id numericality  ' do
      should validate_numericality_of(:proyect_id)
    end

    #Associations validations
    it 'validar si el equipo tiene asociacion con el modelo usuarios ' do
      should belong_to(:user)
    end

    it 'validar si el equipo tiene asociacion con el modelo proyect ' do
      should belong_to(:proyect)
    end

  end
end
