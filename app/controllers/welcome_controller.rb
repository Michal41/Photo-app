class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
		Stripe.api_key = 'sk_test_taf1pu35vCCme7WB43z5eJAE00RN6Qz0w2'

		intent = Stripe::PaymentIntent.create({
		  amount: 1099,
		  currency: 'pln',
		  # Verify your integration in this guide by including this parameter
		  metadata: {integration_check: 'accept_a_payment'},
		})
  end
end
