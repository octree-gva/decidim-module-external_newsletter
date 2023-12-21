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

      
      initializer "decidim_external_newsletter.add_cells_view_paths" do
        # Cell::ViewModel.view_paths << File.expand_path("#{Decidim::Budgets::Engine.root}/app/cells")
        Cell::ViewModel.view_paths << File.expand_path("#{Decidim::Geo::Engine.root}/app/cells")
      end



    end
  end
end
