require 'pathname'
require_relative 'acceptance/base'

Vagrant::Spec::Acceptance.configure do |c|
  acceptance_dir = Pathname.new File.expand_path('../acceptance', __FILE__)

  c.component_paths = [acceptance_dir.to_s]
  c.skeleton_paths = [(acceptance_dir + 'skeletons').to_s]

  c.provider 'virtualbox',
    box: (acceptance_dir + 'artifacts' + 'virtualbox.box').to_s,
    contexts: ['provider-context/virtualbox']
end
