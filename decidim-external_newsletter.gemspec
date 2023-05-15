# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "decidim/external_newsletter/version"

Gem::Specification.new do |s|
  s.version = Decidim::ExternalNewsletter.version
  s.authors = ["Hadrien Froger"]
  s.email = ["hadrien@octree.ch"]
  s.license = "AGPL-3.0"
  s.homepage = "https://github.com/octree-gva/decidim-module-external_newsletter"
  s.required_ruby_version = ">= 2.7"

  s.name = "decidim-external_newsletter"
  s.summary = "Use other tools to send newsletters with decidim."
  s.description = "Remove the newsletter system from Decidim, to use an external form for newsletter registrations."

  s.files = Dir["{app,config,lib}/**/*", "LICENSE-AGPLv3.txt", "Rakefile", "README.md"]

  s.add_dependency "decidim-core", s.version
end
