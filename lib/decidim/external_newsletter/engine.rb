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

    end
  end
end
