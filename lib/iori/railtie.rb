# frozen_string_literal: true

module Iori
  class Railtie < ::Rails::Railtie
    config.app_generators.helper = false

    if config.app_generators.test_framework == :rspec
      config.app_generators.routing_specs = false
      config.app_generators.view_specs = false
    end

    config.web_console.permissions = '0.0.0.0/0' if Rails.env.development? && config.respond_to?(:web_console)
  end
end
