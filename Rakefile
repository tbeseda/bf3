#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.inspect
  t.libs.push "lib"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end
