class Organization < ApplicationRecord
  has_many :users
  # Validations
  validates :name, presence: true
end
