Airbrake.configure do |config|
  config.api_key = Rails.application.secrets.airbrake_api_key
  config.environment_name = Rails.application.secrets.host
end
