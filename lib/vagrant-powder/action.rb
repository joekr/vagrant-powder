
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
        config    = env[:machine].config.Pushbullet
        action    = env[:machine_action]
        provision = env[:provision_enabled]

        case action
        when :up
          puts "Powder unlink"
          `powder unlink`
        when :halt
          puts "Powder link"
          `powder link`
        when :destroy
          puts "powder link"
          `powder link`
        end
      end

    end
  end
end
