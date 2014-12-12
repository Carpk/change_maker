require 'rspec/core/rake_task'
require_relative "lib/change"

RSpec::Core::RakeTask.new(:spec)

task :rspec => :spec

task :make_change_for, :value, :currency do |t, args|
  value = args[:value] || 0
  currency = arg[:currency]
  Change.new.make(value.to_i, currency)
end