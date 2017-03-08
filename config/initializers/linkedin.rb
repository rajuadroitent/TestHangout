
LinkedIn.configure do |config|
  config.client_id     = '78g5ux857whnur'
  config.client_secret = 'HeLIlBlEyx4I9uyc'

  # This must exactly match the redirect URI you set on your application's
  # settings page. If your redirect_uri is dynamic, pass it into
  # `auth_code_url` instead.
  config.redirect_uri  = "http://localhost:3000/sign_up/get_auth_code"
end