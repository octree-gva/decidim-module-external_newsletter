# frozen_string_literal: true

require "rails"
require "decidim/core"

module Decidim
  module ExternalNewsletter
    # This is the engine that runs on the public interface of external_newsletter.
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::ExternalNewsletter

      routes do
        # Add engine routes here
      end

      initializer "decidim_external_newsletter.assets" do |app|
        app.config.assets.precompile += %w(decidim_external_newsletter_manifest.js)
      end
      initializer "decidim_external_newsletter.add_cells_view_paths" do
        # Cell::ViewModel.view_paths << File.expand_path("#{Decidim::Budgets::Engine.root}/app/cells")
        Cell::ViewModel.view_paths << File.expand_path("#{Decidim::Budgets::Engine.root}/app/views")
      end

    end
  end
end
