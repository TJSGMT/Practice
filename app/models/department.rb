class Department < ApplicationRecord
has_many :employees, dependent: :destroy
has_many :teams, dependent: :destroy
enum name:{ Admin:0 ,HR:1 ,marketing:2 ,sales:3 ,tech:4 }
end
