require 'rails_helper'

describe CreditCard do
  it { should validate_presence_of :card_number}
end
