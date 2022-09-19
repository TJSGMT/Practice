class Employee < ApplicationRecord
    belongs_to :team 
    belongs_to :bank
    belongs_to :department
end
