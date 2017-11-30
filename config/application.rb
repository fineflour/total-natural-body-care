require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TotalNaturalBodyCare
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.autoload_paths += Dir["#{config.root}/lib/**/"]  
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif .svg .eot .woff .woff2 .ttf)
    config.autoload_paths += %W(#{config.root}/app/assest/fonts)  
    config.autoload_paths += %W(#{config.root}/app/assets/images)  

    config.generators do |generate|
      generate.helper false
      generate.assets false
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
