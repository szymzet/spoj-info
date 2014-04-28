require 'rake'
require 'rake/testtask'

task :default => :test

Rake::TestTask.new do |t|
  t.test_files = FileList.new('test/*_test.rb')
  t.verbose = true
end
