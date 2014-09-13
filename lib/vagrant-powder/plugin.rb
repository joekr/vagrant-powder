begin
  require "vagrant"
rescue LoadError
  raise "The Vagrant Powder plugin must be run within Vagrant."
end

module VagrantPlugins
  module Powder

    class Plugin < Vagrant.plugin("2")
      name "Powder"
      description <<-DESC
      This plugin handles powder on 'up' and 'down'
      DESC

      command "powder-down" do
        require_relative "command"
        Command
      end

      config "powder" do
        require_relative "config"
        Config
      end

      action_hook("Powder_hook", :machine_action_up) do |hook|
        require_relative "action"
        hook.prepend(Action)
      end

      action_hook("Powder_hook", :machine_action_halt) do |hook|
        require_relative "action"
        hook.prepend(Action)
      end

      action_hook("Powder_hook", :machine_action_destroy) do |hook|
        require_relative "action"
        hook.prepend(Action)
      end

    end

  end
end
