require 'generators/factory_girl'

module FactoryGirl
  module Generators
    class ModelGenerator < Base
      argument :attributes, :type => :array, :default => [], :banner => "field:type field:type"
      class_option :dir, :type => :string, :default => "spec/factories", :desc => "The directory where the factories should go"

      def create_fixture_file
        template 'factory_template.rb', File.join(options[:dir], "#{table_name}_factory.rb")
      end
    end
  end
end
