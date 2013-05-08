require 'rubygems'
require 'rake'

task :sym do
  sym
end

namespace :sym do
  task :force do
    sym(true)
  end
end

def sym(force = false)
  dir = File.dirname(__FILE__)
  force = force ? '-Ff' : ''
  excluded_files = ['.git', '.', '..', 'Rakefile', 'README.md']

  (Dir.glob('*') - excluded_files).each do |file|
    `ln -s #{force} #{File.join(dir, file)} #{ENV['HOME']}/.#{file}`
  end
end
