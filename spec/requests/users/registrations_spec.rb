# require 'swagger_helper'

# RSpec.describe 'users/registrations', type: :request do

#   path '/users/cancel' do

#     get('cancel registration') do
#       response(200, 'successful') do

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end
#   end

#   path '/users/sign_up' do

#     get('new registration') do
#       response(200, 'successful') do

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end
#   end

#   path '/users/edit' do

#     get('edit registration') do
#       response(200, 'successful') do

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end
#   end

#   path '/users' do

#     patch('update registration') do
#       response(200, 'successful') do

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end

#     put('update registration') do
#       response(200, 'successful') do

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end

#     delete('delete registration') do
#       tags :Registrations
#       consumes 'application/json'
#       response(201, 'successful') do
#         let(:user) { create(:normal_user, password:'123456') }
#         run_test!
#       end
#     end

#     post('create registration') do
#       tags :Registrations
#       consumes 'application/json'
#       parameter name: 'payload', in: :body, description: 'atributos para ingresar un usuario'
#       response(200, 'successful') do
#         let(:payload){
#           {user: {
#             password: 123456,
#             email: 'email1@gmail.com',
#           } }}
#         run_test!
#         end
#       end
#     end

#   end

