# frozen_string_literal: true

class Proxy
    
    def initialize(proxy_object)
        @proxy_object = proxy_object
    end

    def method_missing(:method_name)
        if @proxy_object.respond_to?(method_name)
        @proxy_object.send(method_name, *args, &block)
      end
    end

    def respond_to?(method_missing)
        if method_name.to_s[0, 4] == 'foo_'
          true
        else
          super(method_name, include_private)
        end
    end
end

