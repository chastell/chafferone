Gem::Specification.new do |gem|
  gem.name     = 'chafferone'
  gem.version  = '0.0.0'
  gem.summary  = 'Chafferone: a chaperone for social wheat/chaff separation'
  gem.homepage = 'http://github.com/chastell/chafferone'
  gem.author   = 'Piotr Szotkowski'
  gem.email    = 'chastell@chastell.net'

  gem.files       = `git ls-files -z`.split "\0"
  gem.executables = gem.files.grep(%r{^bin/}).map { |path| File.basename path }
  gem.test_files  = gem.files.grep %r{^spec/.*\.rb$}

  gem.add_development_dependency 'bogus'
  gem.add_development_dependency 'minitest', '~> 5.0'
  gem.add_development_dependency 'rake',     '~> 10.1'
  gem.add_development_dependency 'rubocop'
end
