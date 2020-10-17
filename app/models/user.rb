class User < ApplicationRecord
  has_many :reservations
  has_many :traits
  validates :first_name, :last_name, presence: true
  # add devise thingy
end
