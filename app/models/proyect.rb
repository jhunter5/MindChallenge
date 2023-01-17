class Proyect < ApplicationRecord
  belongs_to :user
  has_many :teams
  has_many :users , through: :teams 
  has_many :logs


  #Validations about the proyect's name
  validates :proyect_name, presence: true, uniqueness: true

  #Validations about the proyect's client
  validates :client_name, presence: true

  #Validations about the proyect's user_id, and associations with user model
  validates :user_id, presence: true, numericality: true

  #Validations about team associations with proyect
  validates_associated :teams
  validates_associated :users
  validates_associated :logs



 
end
