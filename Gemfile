source 'https://rubygems.org'
ruby '2.0.0'

ENV['TEST_VAGRANT_VERSION'] ||= 'v1.6.2'

# Using the :plugins group causes Vagrant to automagially load auto_network
# during acceptance tests.
group :plugins do
  gemspec
end

group :test do
  if ENV['TEST_VAGRANT_VERSION'] == 'HEAD'
    gem 'vagrant', :github => 'mitchellh/vagrant', :branch => 'master'
  else
    gem 'vagrant', :github => 'mitchellh/vagrant', :tag => ENV['TEST_VAGRANT_VERSION']
  end

  # Pinned on 05/05/2014. Compatible with Vagrant 1.5.x and 1.6.x.
  gem 'vagrant-spec', :github => 'mitchellh/vagrant-spec', :ref => 'aae28ee'
  gem 'rake'
end

if File.exists? "#{__FILE__}.local"
  eval(File.read("#{__FILE__}.local"), binding)
end
