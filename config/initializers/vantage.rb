$vantage_api_key = ENV.fetch('VANTAGE_API_KEY') do
  Rails.application.credentials.alpha_vantage
end
