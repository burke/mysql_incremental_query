require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "mysql_incremental_query"
    gem.summary = "Query massive datasets without initial query delay"
    gem.description = "Skips the initial phase where mysql sends the entire result set to ruby, instead loading records as they're consumed."
    gem.email = "burke@burkelibbey.org"
    gem.homepage = "http://github.com/burke/mysql_incremental_query"
    gem.authors = ["Burke Libbey"]
    gem.files.include '{spec,lib}/**/*'
    gem.add_dependency "mysql"
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'spec'
    test.pattern = 'spec/**/*_spec.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "multilogger #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
