class CreditCard < ActiveRecord::Base
  validates_presence_of :card_number
  validates_presence_of :expiration_date
  validates_presence_of :security_code
  validates_presence_of :billing_address
end
