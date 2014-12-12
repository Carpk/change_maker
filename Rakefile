require 'rspec/core/rake_task'
require_relative "lib/change"

RSpec::Core::RakeTask.new(:spec)

task :rspec => :spec

task :break_change do
  change = ARGV[0]
  # value = Change.make(change)
  puts "#{change}"
end
