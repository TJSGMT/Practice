class Bank < ApplicationRecord
  has_many :employees, dependent: :destroy
end
