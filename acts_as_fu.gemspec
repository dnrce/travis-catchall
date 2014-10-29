# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{acts_as_fu}
  s.version = "0.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pat Nakajima"]
  s.email = %q{patnakajima@gmail.com}
  s.files = ["lib/acts_as_fu", "lib/acts-as-fu.rb", "lib/acts_as_fu/base.rb", "lib/acts_as_fu.rb", "Rakefile", "Gemfile", "prerelease"]
  s.has_rdoc = true
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Generate ActiveRecord models on the fly for your tests}

  s.add_runtime_dependency "activerecord", ">= 0"
  s.add_runtime_dependency "sqlite3", ">= 0"
  s.add_development_dependency "bundler", "~> 1.0"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 3.1.0"
end
