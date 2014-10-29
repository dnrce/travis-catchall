require 'rake'
require "rspec/core/rake_task"
require "bundler/gem_tasks"

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/*_spec.rb'
end

namespace :spec do
  desc "run specs against multiple versions of rails"
  task :all do
    Dir["Gemfile-*"].sort.each do |gemfile|
      next if gemfile =~ /lock/
      puts "* running specs under #{gemfile} ..."
      FileUtils.rm_f "Gemfile"
      FileUtils.cp gemfile, "Gemfile"
      system("bundle install") || raise("could not bundle #{gemfile}")
      Rake::Task[:spec].execute
    end
  end
end

task :default => :spec
