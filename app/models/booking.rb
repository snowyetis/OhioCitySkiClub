class Booking < ApplicationRecord
  belongs_to :user, :inverse_of => :bookings
  accepts_nested_attributes_for :user

  belongs_to :trip, :inverse_of => :bookings
  accepts_nested_attributes_for :trip

  belongs_to :client, inverse_of: :bookings
  accepts_nested_attributes_for :client

  has_many :trip_payments, dependent: :destroy, :inverse_of => :booking
  accepts_nested_attributes_for :trip_payments

end
