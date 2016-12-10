require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StudyDay2
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.eager_load_paths << Rails.root.join('app', 'graph')
    config.eager_load_paths << Rails.root.join('app', 'graph', 'types')
    config.eager_load_paths << Rails.root.join('app', 'graph', 'types', 'query')
    config.eager_load_paths << Rails.root.join('app', 'graph', 'types', 'mutation')
  end
end
