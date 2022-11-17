class Department < ApplicationRecord
has_many :employees, dependent: :destroy, foreign_key: :department_id
has_many :teams, dependent: :destroy
end
 