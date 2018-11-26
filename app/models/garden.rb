class Garden < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy

  validates :name, presence: true
  validates :user, presence: true
  validates :address, uniqueness: true, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
  validates :max_guests, presence: true, numericality: { only_integer: true }
end
