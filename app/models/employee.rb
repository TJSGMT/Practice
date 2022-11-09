class Employee < ApplicationRecord
    belongs_to :team, optional: true
    belongs_to :bank, optional: true
    belongs_to :department, optional: true
end
