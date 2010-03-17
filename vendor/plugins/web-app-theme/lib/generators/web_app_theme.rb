require 'rails/generators/base'

module WebAppTheme
  module Generators
    class Base < Rails::Generators::Base #:nodoc:
      def self.source_root
        @_rspec_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), generator_name, 'templates'))
      end
    end
  end
end
