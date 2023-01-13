class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self


  enum role: %i[NormalUser Admin SuperAdmin]

  #relations

  has_many :logs


  #validations
  validates :email , presence: true , uniqueness: true
  validates :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "only allows valid emails"}
  validates :encrypted_password , presence: true 
  validates :role , presence: true , numericality: true

end
