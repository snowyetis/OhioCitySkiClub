class Trip < ApplicationRecord
  has_many :clients, through: :bookings
  accepts_nested_attributes_for :bookings
end
