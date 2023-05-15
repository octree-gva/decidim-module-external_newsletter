# frozen_string_literal: true

module Decidim
  module ExternalNewsletter
    # This is the engine that runs on the public interface of `ExternalNewsletter`.
    class AdminEngine < ::Rails::Engine
      isolate_namespace Decidim::ExternalNewsletter::Admin

      paths["db/migrate"] = nil
      paths["lib/tasks"] = nil

      routes do
        resources :external_newsletter
        root to: 'external_newsletter#index'
      end
      
      initializer "decidim.external_newsletter" do |app|
        Decidim.menu :admin_menu do |menu|
          newsletter_item = menu.items.select {|i| i.url.ends_with?"newsletters" }.first
          newsletter_item.instance_variable_set(:@if, false)
        end
      end

      def load_seed
        nil
      end
    end
  end
end
