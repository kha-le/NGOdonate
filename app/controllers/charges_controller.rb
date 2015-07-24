class ChargesController < ApplicationController

  def index
    @amount = @charge.amount
  end

  def new
    @charge = Charge.new
    @amount = @charge.amount
    @organization = Organization.find(params[:organization_id])
  end

  def show
    @organization = Organization.find(params[:organization_id])
    @charge = Charge.find(params[:id])
    @amount = @charge.amount
  end

  def create
    # Amount in cents
    @organization = Organization.find(params[:organization_id])
    # binding.pry
    @charge = Charge.create(charge_params)

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
    redirect_to organization_charge_path(@organization, @charge)
  end

  private
  def charge_params
    params.require(:charge).permit(:amount)
  end
end
