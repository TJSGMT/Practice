class Employee < ApplicationRecord

    has_many :employee_skills
    has_many :skills, through: :employee_skills

    validates :contact,numericality: { only_integer: true }, length: { is: 10 },presence: true
    belongs_to :team, optional: true
    belongs_to :bank, optional: true
    belongs_to :department, optional: true   
end