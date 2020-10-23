class Trait < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :price_hour, presence: true
end
