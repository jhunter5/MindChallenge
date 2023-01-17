class Team < ApplicationRecord
  belongs_to :user
  belongs_to :proyect

  # Validations of ids
  validates :user_id, presence: true, numericality: true
  validates :proyect_id, presence: true, numericality: true
end
