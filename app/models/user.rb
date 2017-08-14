class User < ApplicationRecord
  # validates :first_name, :last_name
  has_many :companies
end
