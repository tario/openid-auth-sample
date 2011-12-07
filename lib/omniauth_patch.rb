# this is wrong
class Array
  def empty_?
    return true if size == 0
    #first
    $openid_store_filesystem
    #if first.instance_of? 
#      return true
    #end
    
    return false
  end
end

module OmniAuth
  module Strategies
    class OpenID
      def initialize(app, *args, &block)
        p self.class
                print "Z"*60,"\n"
        @app = app
        @options = self.class.default_options.dup
  
        options.deep_merge!(args.pop) if args.last.is_a?(Hash)
        options.name ||= self.class.to_s.split('::').last.downcase
  
        self.class.args.each do |arg|
          options[arg] = args.shift
        end
    
        # Make sure that all of the args have been dealt with, otherwise error out.
        #raise ArgumentError, "Received wrong number of arguments. #{args.inspect}" unless args.empty?
      end
    end
  end
end
