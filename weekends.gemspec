lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'weekends/version'

Gem::Specification.new do |spec|
  spec.name          = 'weekends'
  spec.version       = Weekends::VERSION
  spec.authors       = ['GeorgeGorbanev']
  spec.email         = ['GeorgeGorbanev@gmail.com']

  spec.summary       = 'Weekend class with methods like #nearest_weekend, #on_date? and #today?'
  spec.homepage      = 'https://github.com/GeorgeGorbanev/weekends'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
