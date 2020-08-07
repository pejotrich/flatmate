Unsplash.configure do |config|
  config.application_access_key = "thZ3GN1NVyngdI8PRfHBl2w2a48u-r2UxVAjy-yO-P0"
  config.application_secret = "Cn2It1eBMhvsWNoYoJxmZONeyJACi4XhMSuNyWiWCjI"
  config.application_redirect_uri = "https://your-application.com/oauth/callback"
  config.utm_source = "flatmate&utm_medium=referral"

  # optional:
  config.logger = MyCustomLogger.new
end