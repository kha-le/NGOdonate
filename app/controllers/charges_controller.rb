class ChargesController < ApplicationController

  @@amount = 800

  def index
    @amount = @@amount
  end

  def new
  end

  def create
    # Amount in cents
    @amount = @@amount

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => "test",
      :currency    => 'usd'
    )


  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

end
