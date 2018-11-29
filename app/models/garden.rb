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
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # include PgSearch
  # pg_search_scope :search_by_name_address_barbecue_and_swimmining_pool,
  #   against: [:name, :address, :barbecue, :swimming_pool],
  #   using: {
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }
end
