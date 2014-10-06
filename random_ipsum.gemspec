# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "random_ipsum"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.summary     = "A randomized embedded lorem ipsum generator"
  s.email       = "open-source@metaminded.com"
  s.homepage    = "http://github.com/metaminded/random_ipsum"
  s.description = "A randomized embedded lorem ipsum generator that can generate words, sentences, or paragraphs."
  s.authors     = ['Peter Horn']

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
