source 'https://rubygems.org'

# Private gem for non open-source Ruby Gems
source 'https://THq8z2w-sW925RjWBgYU@gem.fury.io/takeofflabs/'

ruby '2.2.2'

# Use unicorn as the app server
gem 'unicorn'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
gem 'rename'

# Use sqlite3 as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Haml is a templating engine for HTML
gem 'haml'

# using bootstrap 3 - flat UI
gem 'bootstrap-sass'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# The administration framework for Ruby on Rails.
gem 'inherited_resources', github: 'josevalim/inherited_resources'
gem 'responders', '~> 2.0'
gem 'activeadmin', github: 'activeadmin'

# Flexible authentication solution for Rails with Warden
gem 'devise'

# Raven is a Ruby client for Sentry
#gem "sentry-raven", git: "https://github.com/getsentry/raven-ruby.git"

# Authorization
gem 'cancancan'

# The Ruby cloud services library.
gem 'fog'

# Manipulate images with minimal use of memory via ImageMagick / GraphicsMagick
gem 'mini_magick'

# Upload files in your Ruby applications, map them to a range of ORMs, store them on different backends.
gem "carrierwave"

# Makes http fun! Also, makes consuming restful web services dead easy.
gem 'httparty'

# Facebook OAuth2 Strategy for OmniAuth
gem 'omniauth-facebook'

# OmniAuth strategy for Twitter
gem 'omniauth-twitter'

# OmniAuth strategy for Instagram
gem 'omniauth-instagram'

# Static asset serving
gem 'rack-cors', require: 'rack/cors'
gem 'font_assets'

# Start processes using the Procfile
gem 'foreman'

# the font-awesome font for the rails asset pipeline
gem 'font-awesome-rails'

# formtastic and simpleform
gem 'jasny_bootstrap_extension_rails'

# skit_gems = ['sessions_facebook', 'sessions']

skit_gems = ['sessions_instagram', 'sessions_twitter', 'sessions_facebook', 'sessions']

# if ENV["starter_kit_development"].nil?
#   skit_gems.each do |sk|
#     gem "tol_skit_#{sk}", path: "../skit-modules/tol_skit_#{sk}"
#   end
# else
  skit_gems.each do |sk|
    gem "tol_skit_#{sk}"
  end
# end

# Gems for development and test tools
group :development, :test do
  # An IRB alternative and runtime developer console
  gem 'pry'

  # A collection of tools used for Rails development
  gem 'tol'

  # When mail is sent from your application, Letter Opener will open a preview in the browser instead of sending.
  gem "letter_opener"

  # RSpec for Rails
  gem "rspec-rails"

  # Capybara is an integration testing tool for rack based web applications. It simulates how a user would interact with a website
  gem "capybara"

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Factory Girls creates factories in order to prevent entering unnecessary
  # data when creating models in test mode.
  gem "factory_girl_rails"
end
