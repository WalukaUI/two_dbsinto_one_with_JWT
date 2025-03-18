require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "sprockets/railtie"
require "action_view/railtie"
require "action_cable/engine"
require 'jwt'
require "rails/test_unit/railtie"
require_relative "../lib/middleware/secure_cookies"



# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)



module DoctorBookingManager
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    # config.autoload_paths += %W(#{config.root}/lib)
    #config.autoload_paths += Dir["#{config.root}/lib/jwt_token.rb"]
    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
   # ActiveRecord::SessionStore::Session.table_name = 'legacy_session_table'
   # ActiveRecord::SessionStore::Session.primary_key = 'session_id'
   # ActiveRecord::SessionStore::Session.data_column_name = 'legacy_session_data'
   # ActiveRecord::SessionStore::Session.serializer = :json
    # Adding back cookies and session middleware
   # config.middleware.use ActionDispatch::Flash
   # config.session_store :cookie_store, key: "_interslice_session"
   # config.middleware.use ActionDispatch::CookieStore
   # config.middleware.use config.session_store, config.session_options
   # config.middleware.use ActionDispatch::Session::CookieStore
   # config.middleware.use ActionDispatch::Session::CacheStore 
   # config.middleware.insert_after ActionDispatch::Static, Middleware::SecureCookies

    if Rails.env.production? 
      config.action_dispatch.cookies_same_site_protection = :none
     end
  end
end
