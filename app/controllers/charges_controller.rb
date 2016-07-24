class ChargesController < ApplicationController
  def new
  end

  def create
    @amount = 500

    customer = Stripe::Costumer.create(
      :email => params[:stripeEmail],
      :source => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :costumer => costumer.id,
      :amount => @amount,
      :description => 'Rails Stripe Costumer',
      :currency => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
end
