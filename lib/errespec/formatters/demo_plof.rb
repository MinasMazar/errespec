require_relative 'plof'

module ErreSpec
  module Formatters
    class DemoPlof < Plof
      RSpec::Core::Formatters.register self,
        :example_passed,
        :example_pending,
        :example_failed,
        :start_dump,
        :dump_failures
        :dump_summary

      def dump_failures(_notification)
      end

      def dump_summary(_notification)
      end
    end
  end
end
