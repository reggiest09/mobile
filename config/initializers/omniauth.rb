OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], scope: 'email', info_fields: 'name,email'
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :instagram, ENV['INSTAGRAM_KEY'], ENV['INSTAGRAM_SECRET']
end