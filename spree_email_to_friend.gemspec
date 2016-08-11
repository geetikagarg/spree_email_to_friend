# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_email_to_friend/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_email_to_friend'
  s.version     = SpreeEmailToFriend.version
  s.summary     = 'Spree extension to send product recommendations to friends'
  s.description = s.summary
  s.required_ruby_version = '>= 1.9.3'

  s.authors      = ['Jorge Calás Lozano', 'Roman Smirnov', 'Trung Lê']
  s.homepage     = 'https://github.com/spree/spree_email_to_friend'
  s.license      = 'BSD-3'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_path  = 'lib'
  s.requirements << 'none'

  s.has_rdoc = false

  s.add_dependency 'recaptcha', '>= 0.3.1'

  s.add_development_dependency 'rspec-rails', '~> 3.1.0'
end
