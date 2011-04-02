require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "rails3-settings"
  gem.version  = IO.read(File.join(File.dirname(__FILE__), 'VERSION'))
  gem.homepage = "http://github.com/Magicdream/rails-settings"
  gem.license = "MIT"
  gem.summary = %Q{Store application settings or user-settings in DB like key-value pairs}
  gem.description = %Q{Settings is a plugin that makes managing a table of global key, value pairs easy. Think of it like a global Hash stored in you database, that uses simple ActiveRecord like methods for manipulation. Keep track of any global setting that you dont want to hard code into your rails app. You can store any kind of object. Strings, numbers, arrays, or any object.}
  gem.email = "khomutetskiy@gmail.com"
  gem.authors = ["Squeegy", "Georg Ledermann ", "Mikhail Khomutetskiy"]
  
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  gem.add_runtime_dependency 'activerecord', '~> 3.0.5'
  gem.add_runtime_dependency 'activesupport', '~> 3.0.5'
   
  gem.add_development_dependency 'bundler', '~> 1.0.10'
  gem.add_development_dependency 'jeweler', '~> 1.5.2'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "rails-settings #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end