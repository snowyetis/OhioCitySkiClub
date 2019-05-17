class Trippayment < ApplicationRecord
  belongs_to :user, inverse_of: :trippayments
  accepts_nested_attrivbutes_for :user

  belongs_to :booking, inverse_of: :trippayments
  accepts_nested_attributes_for :booking
end
