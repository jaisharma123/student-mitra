require_relative 'boot'

require 'rails/all'
require 'pdfkit'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StudentMitra
  class Application < Rails::Application
    config.middleware.use "PDFKit::Middleware", :print_media_type => true
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
