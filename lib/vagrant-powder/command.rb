module VagrantPlugins
  module Powder

    class Command < Vagrant.plugin(2, :command)

      def self.synopsis
        "runs powder down so you don't have to."
      end

      def execute
        puts "Running 'powder down'"
        `powder down`
        0
      end
    end

  end
end
