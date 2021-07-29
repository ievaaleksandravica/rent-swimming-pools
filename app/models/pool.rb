class Pool < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :title, presence: true
  validates :description, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validates_numericality_of :zip_code
  validates :category, presence: true
  validates :qm, presence: true
  validates_numericality_of :qm
  validates :price_per_day, presence: true
  validates_numericality_of :price_per_day
  validates :max_capacity, presence: true
end
