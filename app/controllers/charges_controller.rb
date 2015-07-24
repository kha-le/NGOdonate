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

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => params[:amount],
      :description => "test",
      :currency    => 'usd'
    )


  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to organization_path(@organization)
  end

def update
  @charge = Charge.find(params[:id])
  @organization = Organization.find(params[:organization_id])
  if @charge.update(charge_params)
    redirect_to new_organization_charge_path(@organization, @charge)
  else
    flash[:notice] = "Error trying to update organization."
    render :edit
  end
end

  private
  def charge_params
    params.require(:charge).permit(:amount)
  end
end
