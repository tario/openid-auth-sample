# this is wrong
module OmniAuth
  module Strategy
    module ClassMethods
      
      def initialize(app, *args, &block)
        @app = app
        @options = self.class.default_options.dup
  
        options.deep_merge!(args.pop) if args.last.is_a?(Hash)
        options.name ||= self.class.to_s.split('::').last.downcase
  
        self.class.args.each do |arg|
          options[arg] = args.shift
        end
  
        # Make sure that all of the args have been dealt with, otherwise error out.
        #raise ArgumentError, "Received wrong number of arguments. #{args.inspect}" unless args.empty?
  
        yield options if block_given?
      end
    end
  end
end
