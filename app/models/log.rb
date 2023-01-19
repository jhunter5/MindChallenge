class Log < ApplicationRecord

    #Validations about inclusion
    validates :role, inclusion: { in: [0,1], message: "is not included in the list" }
    validates :logeable, inclusion: { in: %w(error movement), message: "is not included in the list" }

    #Validations about presence
    validates :happened_at, presence: true
    validates :description, presence: true
    validates :role, presence: true, numericality: true
    validates :logeable, presence: true

end
