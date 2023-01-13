require 'swagger_helper'
require 'devise/jwt/test_helpers'

RSpec.describe 'v1/admins', type: :request do
  headers = {}
  user=FactoryBot.create(:user, role:2)
  auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, user)
  proyect=FactoryBot.create(:proyect)
  path '/v1/admin/dashboard_users' do
    get('dashboard_users admin') do
      tags :Admins
      consumes 'application/json'
      # before do
      #   sign_in user
      # end
      security [Bearer: []]
      response(200, 'successful') do
        let(:Authorization) { auth_headers }
        run_test!
      end
    end
  end

  path '/v1/admin/dashboard_proyects' do

    get('dashboard_proyects admin') do
      tags :Admins
      consumes 'application/json'
      security [Bearer: []]
      response(200, 'successful') do
        let(:Authorization) { auth_headers }
        run_test!
      end
    end
  end

  path '/v1/admin/user_create' do
    post('create admin') do
      tags :Admins
      consumes 'application/json'
      parameter name: 'payload', in: :body, description: 'atributos para crear el usuario',
        schema: {"$ref" => "#/components/schemas/user"}
      security [Bearer: []]
      response(200, 'successful') do
        let(:Authorization) { auth_headers }
        let(:payload){
          {
            user: {
            email: "santiago5@normal.com",
            password: "123456"
          }
        }
      }
        run_test!
      end
    end
  end

  path '/v1/admin/give_admin' do

    post('give_admin admin') do
      tags :Admins
      consumes 'application/json'
      parameter name: 'payload', in: :body, description: 'atributos para dar admin al usuario',
        schema: {"$ref" => "#/components/schemas/give_admin"}
      security [Bearer: []]
      response(200, 'successful') do
        let(:Authorization) { auth_headers }
        let(:payload){
          {
            id: 2
          }
        }
        run_test!
      end
    end

    delete('remove_admin admin') do
      tags :Admins
      consumes 'application/json'
      parameter name: 'payload', in: :body, description: 'atributos para quitar admin al usuario',
        schema: {"$ref" => "#/components/schemas/give_admin"}
      security [Bearer: []]
      response(200, 'successful') do
        let(:Authorization) { auth_headers }
        let(:payload){
          {
            id: 2
          }
        }
        run_test!
      end
    end
  end

  path '/v1/admin/proyect' do

    post('create_proyect admin') do
      tags :Admins
      consumes 'application/json'
      parameter name: 'payload', in: :body, description: 'atributos crear el proyecto',
        schema: {"$ref" => "#/components/schemas/proyect"}
      security [Bearer: []]
      # proyect= FactoryBot.create(:proyect)
      response(200, 'successful') do
        let(:Authorization) { auth_headers }
        let(:payload){
          {
            proyect: {
              proyect_name: "asdflkadjsfk",
              client_name: "nigel",
              user_id: 2
          }
          }
        }
        run_test!
      end
    end

    put('update_proyect admin') do
      tags :Admins
      consumes 'application/json'
      parameter name: 'payload', in: :body, description: 'atributos para actualizar el proyecto',
        schema: {"$ref" => "#/components/schemas/proyect_update"}
      security [Bearer: []]
        # proyect= FactoryBot.create(:proyect)
      response(200, 'successful') do
        let(:Authorization) { auth_headers }
        let(:payload){
          {
            "id": proyect.id,
            "proyect": {
                "proyect_name": "api en rails"
            }
          }
        }
        run_test!
      end
    end

    delete('destroy_proyect admin') do
      tags :Admins
      consumes 'application/json'
      parameter name: 'payload', in: :body, description: 'atributos eliminar el proyecto',
        schema: {"$ref" => "#/components/schemas/proyect_delete"}
      security [Bearer: []]
      # proyect= FactoryBot.create(:proyect)
      response(200, 'successful') do
        let(:Authorization) { auth_headers }
        let(:payload){
          {
            "id": proyect.id
          }
        }
        run_test!
      end
    end
  end

  path '/v1/admin/user_to_proyect' do

    post('add_user_to_proyect admin') do
      tags :Admins
      consumes 'application/json'
      parameter name: 'payload', in: :body, description: 'atributos para añadir un usuario a un proyecto',
        schema: {"$ref" => "#/components/schemas/team"}
      security [Bearer: []]
      # proyect= FactoryBot.create(:proyect)
      response(200, 'successful') do
        let(:Authorization) { auth_headers }
        let(:payload){
          {
            "team": {
              "user_id": user.id,
              "proyect_id": proyect.id
            }
          }
        }
        run_test!
      end
    end

    delete('delete_user_from_proyect admin') do
      tags :Admins
      consumes 'application/json'
      parameter name: 'payload', in: :body, description: 'atributos para eliminar un usuario de un proyecto',
        schema: {"$ref" => "#/components/schemas/team"}
      security [Bearer: []]
      # proyect= FactoryBot.create(:proyect)
      response(200, 'successful') do
        let(:Authorization) { auth_headers }
        let(:payload){
          {
            "team": {
              "user_id": 36,
              "proyect_id": 11
            }
          }
        }
        run_test!
      end
    end
  end
end
