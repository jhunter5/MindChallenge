require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validaciones del modelo user' do
    subject { build(:user) }
    #Validations about the email
    it 'validar si el email esta presente' do
      should validate_presence_of(:email)
    end
    it { should validate_uniqueness_of(:email) }

    it 'Validar que no acepte correos incorrectos' do
      should allow_value("user@example.com").for(:email)
      # should validate_format_of(:email).with(/\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/)
    end

    #Validations about password
    it 'Validar si el password esta presente' do
      should validate_presence_of(:encrypted_password)
    end

    #Validations about role
    it 'Validar si el role esta presente' do
      should validate_presence_of(:role)
    end
    it 'Validar si role es un numero entero' do
      should validate_numericality_of(:role).only_integer
    end

    it 'validar que role se encuentre en [0,2]' do

    end


    #Valid
    it 'Validar si solo se pueden crear empleados o propietarios' do
      should validate_inclusion_of(:type).in_array(%w[SuperAdmin Admin NormalUser])
    end

  end
end
