module VagrantPlugins
  module Powder

   class Config < Vagrant.plugin('2', :config)

      attr_accessor :enabled
      attr_accessor :link_name

      def initialize
        @enabled = UNSET_VALUE
        @link_name = UNSET_VALUE
      end

      def finalize!
        @enabled = false if @enabled == UNSET_VALUE
        @link_name = File.basename(Dir.getwd) if @link_name == UNSET_VALUE
      end

    end

  end
end
