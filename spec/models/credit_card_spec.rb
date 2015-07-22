require 'rails_helper'

describe CreditCard do
  it { should validate_presence_of :card_number }
  it { should validate_presence_of :expiration_date }
  it { should validate_presence_of :security_code }
  it { should validate_presence_of :billing_address }
end
