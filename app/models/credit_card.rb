class CreditCard < ActiveRecord::Base
  validates_presence_of :card_number
end
