class Company < ApplicationRecord
  validates :name, :address, :city, :country, presence: true
  has_many :users
end
