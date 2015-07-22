Rails.configuration.stripe = {
  :publishable_key => "pk_test_9Hp9ALjz1TKczbWLn1ENHlNQ",
  :secret_key      => "sk_test_SQY3bPaMLOgHTOcJnc9A0XCH"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
