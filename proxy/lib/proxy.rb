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

    def respond_to?(method_name, include_private = false)
      proxy_method_name = @proxy_object.methods
      if proxy_method_name.include?(method_name)
        true
      else
        super(methodd_name, include_private)
      end
    end

    def called?
      messages.include?(method_name)
    end
end

