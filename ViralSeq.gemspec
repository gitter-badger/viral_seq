
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ViralSeq/version"

Gem::Specification.new do |spec|
  spec.name          = "ViralSeq"
  spec.version       = ViralSeq::VERSION
  spec.authors       = ["Ronald Swanstrom"]
  spec.email         = ["swanstromlab@gmail.com"]

  spec.summary       = %q{A Ruby Gem containing bioinformatics tools for processing viral NGS data.}
  spec.description   = %q{Specifically for Primer-ID sequencing and HIV drug resistance analysis.}
  spec.homepage      = "https://github.com/ViralSeq"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
