Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Set the environment variables
  ENV['SENTRY_DNS'] = ''

  ENV['FACEBOOK_KEY'] = '1116566555105302'
  ENV['FACEBOOK_SECRET'] = 'ce136346fe6e02ea296ff86402d90e69'

  ENV['TWITTER_KEY'] = 'XY2UzRuj3vZZtGSkKexZrpzrJ'
  ENV['TWITTER_SECRET'] = 'q93iXlnQZZdVE3JM9fMLx4h98jxy76X6z30Tr5r1D9GoW3dhp4'

  ENV['INSTAGRAM_KEY'] = '3e162c82d5014111a37f19e65347ead1'
  ENV['INSTAGRAM_SECRET'] = '71f35ca6e4f14554b739b048135a316a'

  # ENV['CARRIERWAVE_PROVIDER'] = 'AWS'
  # ENV['CARRIERWAVE_ACCESS_KEY'] = 'AKIAJCYBJRQJPYSIJ7PQ'
  # ENV['CARRIERWAVE_SECRET_ACCESS'] = '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'
  # ENV['CARRIERWAVE_REGION'] = 'us-east-1'
  # ENV['CARRIERWAVE_FOG_DIRECTORY'] = '-orchestrano'

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  config.action_mailer.default_url_options = { :host => 'localhost:3000'}
  config.action_mailer.delivery_method = :letter_opener
end
