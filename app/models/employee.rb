class Employee < ApplicationRecord
    validates :contact,numericality: { only_integer: true }, length: { is: 10 },presence: true
    belongs_to :team, optional: true
    belongs_to :bank, optional: true
    belongs_to :department, optional: true
end
