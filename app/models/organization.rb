class Organization < ActiveRecord::Base
  validates_presence_of :name

    def process_payment
      customer_data = {email: email, card: card_token}
                          .merge((organization.plan.blank?)? {}: {plan: organization.plan})
      customer = Stripe::Customer.create customer_data

      Stripe::Charge.create customer: customer.id,
                            amount: organization.price * 100,
                            description: organization.name,
                            currency: 'usd'
                            customer_id = customer.id
    end

  def renew
    update_attibute :end_date, Date.today + 1.month
  end
end
