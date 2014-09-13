
module VagrantPlugins
  module Powder
    class Action

      def initialize(app,env)
        @app     = app
        @ui      = env[:ui]
        @machine = env[:machine].name.to_s
        @machinfo = env[:machine]
      end

      def call(env)

        # Before machine action
        state  = env[:machine].state.id

        # Execute machine action
        @app.call(env)

        # After execute machine action
        config    = env[:machine].config.powder
        action    = env[:machine_action]
        provision = env[:provision_enabled]

        if config.enabled

          case action
          when :up
            puts "Powder unlink #{config.link_name}"
            `powder unlink #{config.link_name}`
          when :halt
            puts "Powder link #{config.link_name}"
            `powder link #{config.link_name}`
          when :destroy
            puts "powder link #{config.link_name}"
            `powder link #{config.link_name}`
          end

        end
      end

    end
  end
end
