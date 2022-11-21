class Team < ApplicationRecord
    has_many :employees, dependent: :destroy
    belongs_to :department, optional: true
end