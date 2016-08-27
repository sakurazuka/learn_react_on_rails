require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LearnReactOnRails
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #
    # Browserify transform for Babel
    config.browserify_rails.commandline_options = '-t babelify'
    # whitelisted_ipsを追加
    config.web_console.whitelisted_ips = '192.168.99.1'
  end
end
