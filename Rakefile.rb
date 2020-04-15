require 'rubygems'
require 'cucumber'
require 'rake'
require 'bundler'
require 'selenium-webdriver'
require 'cucumber/rake/task'


Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format json --out results.json" # Any valid command line option can go here.
end