Rails.configuration.stripe = {
  :publishable_key =>  'pk_test_L2hs3s4pDFj02wQGWhrfydMf',
  :secret_key => 'sk_test_OL1uUytAEhsnak3PeuUu7wiR'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
