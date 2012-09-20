# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "active_scaffold/version"

Gem::Specification.new do |s|
  s.name        = "active_scaffold"
  s.version     = ActiveScaffold::Version::STRING
  s.platform    = Gem::Platform::RUBY  
  s.summary     = "Flexible authentication solution for Rails with Warden"
  s.email       = "activescaffold@googlegroups.com"
  s.homepage    = "http://activescaffold.com"
  s.description = %q{Save time and headaches, and create a more easily maintainable set of pages, with ActiveScaffold. ActiveScaffold handles all your CRUD (create, read, update, delete) user interface needs, leaving you more time to focus on more challenging (and interesting!) problems.}
  s.authors     = ["Many, see README"]

  s.extra_rdoc_files = ["README"]
  s.licenses = ["MIT"]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("rails", ">= 2.3.0")
end