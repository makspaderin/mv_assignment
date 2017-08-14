class User < ApplicationRecord
  validate :first_name, :last_name
  belongs_to :company
end
