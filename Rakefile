require 'rake/testtask'
require 'active_support'
require 'active_support/core_ext'

Rake::TestTask.new do |t|
  t.pattern = "spec/**/*_spec.rb"
end

task :create, :name do |task, args|
  name = args[:name]
  class_name = name.camelize
  file_name = name.underscore
  ## Create the source file
  File.open("lib/#{file_name}.rb", 'w') do |f|
    f.write("class #{class_name}\nend")
  end

  File.open("spec/#{file_name}_spec.rb", 'w') do |f|
    f.write("require 'spec_helper'\ndescribe #{class_name} do\nend")
  end
end

task :default => [:test]
