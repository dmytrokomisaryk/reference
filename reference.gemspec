
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "reference/version"

Gem::Specification.new do |spec|
  spec.name          = "reference"
  spec.version       = Reference::VERSION
  spec.authors       = ["dmytro.komisaryk"]
  spec.email         = ["dmytrokomisaryk@gmail.com"]

  spec.summary       = %q{A gem to generate reference code to needed model}
  spec.description   = %q{Uniq code with by the '[A-Z]{3}-\\d{3}' pattern. Generate migration with reference field for particular Model}
  spec.homepage      = "https://github.com/dmytrokomisaryk/reference"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_runtime_dependency "faker", "~> 1.9.1"
end
