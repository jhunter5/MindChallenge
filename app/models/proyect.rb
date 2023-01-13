class Proyect < ApplicationRecord
  belongs_to :user
  has_many :teams
  has_many :users , through: :teams 
  has_many :logs


  # validations
  validates :proyect_name, presence: true, uniqueness: true
  validates :client_name, presence: true


 
end
