RSpec::Support.require_rspec_core "formatters/base_text_formatter"
RSpec::Support.require_rspec_core "formatters/console_codes"

module ErreSpec
  module Formatters
    class Plof < RSpec::Core::Formatters::BaseTextFormatter
      RSpec::Core::Formatters.register self,
        :example_passed,
        :example_pending,
        :example_failed,
        :start_dump,
        :dump_failures
        :dump_summary

      def example_passed(_notification)
        output.print RSpec::Core::Formatters::ConsoleCodes.wrap('.', :success)
      end

      def example_pending(_notification)
        output.print RSpec::Core::Formatters::ConsoleCodes.wrap('*', :pending)
      end

      def example_failed(_notification)
        output.print RSpec::Core::Formatters::ConsoleCodes.wrap(" \uFEFF\u{1F4A9} ".encode('utf-8'), :failure)
      end

      def start_dump(_notification)
        output.puts
      end

      def dump_failures(_notification)
        super unless ErreSpec.demo_mode?
      end

      def dump_summary(_notification)
        super unless ErreSpec.demo_mode?
      end
    end
  end
end
