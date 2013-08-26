# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jdl/version'

Gem::Specification.new do |spec|
  spec.name          = "jdl"
  spec.version       = Jdl::VERSION
  spec.authors       = ["shiren1118"]
  spec.email         = ["shiren1118@126.com"]
  spec.description   = %q{根据指定目录，扫描内部扩展名为*的所有文件，并输出到jdl.js内}
  spec.summary       = %q{根据指定目录，扫描内部扩展名为*的所有文件，并输出到jdl.js内，主要用于js测试}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
