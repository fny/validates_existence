require "rubygems"
require "rake"
require "rake/testtask"
require "rake/clean"
require "rdoc/task"
require "rubygems/package_task"

desc "Default: run unit tests."
task :default => :test

begin
  require "jeweler"
  Jeweler::Tasks.new do |jewel|
    jewel.name        = "validates_existence"
    jewel.summary     = "Validates Rails model belongs_to association existence."
    jewel.email       = %w(tanel.suurhans@perfectline.ee tarmo.lehtpuu@perfectline.ee)
    jewel.homepage    = "http://github.com/perfectline/validates_existence/tree/master"
    jewel.description = "A library for validating model association existence."
    jewel.authors     = ["Tanel Suurhans", "Tarmo Lehtpuu"]
    jewel.files       = FileList["rails/*.rb", "lib/**/*.rb", "*.rb", "MIT-LICENCE", "README.markdown"]
    jewel.add_dependency "activerecord", ">= 3.0.0"
    jewel.add_development_dependency "appraisal", ">= 1.0.0.beta"
    jewel.add_development_dependency "minitest", "~> 4.0"
    jewel.add_development_dependency "sqlite3"
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

Rake::TestTask.new(:test) do |t|
  t.libs << "lib"
  t.libs << "test"
  t.pattern = "test/**/*_test.rb"
  t.verbose = true
end
