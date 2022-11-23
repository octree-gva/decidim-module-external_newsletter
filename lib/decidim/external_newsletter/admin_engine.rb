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

      def load_seed
        nil
      end
    end
  end
end
