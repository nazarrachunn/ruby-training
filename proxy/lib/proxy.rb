# frozen_string_literal: true

class Proxy
  
    def initialize(proxy_object)
        @proxy_object = proxy_object
    end

    def method_missing(method_name, *args, &block)
        if @proxy_object.respond_to?(method_name)
          @proxy_object.send(method_name, *args, &block)
        else
          super(method_name, *args, &block)
        end
    end
end

