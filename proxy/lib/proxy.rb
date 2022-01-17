# frozen_string_literal: true

class Proxy
  attr_reader :messages

  
  def initialize(proxy_object)
    @proxy_object = proxy_object
    @messages = []
  end

  def method_missing(method_name, *args, &block)
    if @proxy_object.respond_to?(method_name)
      messages.push(method_name)
      @proxy_object.send(method_name, *args, &block)
    else
      super method_name
    end
  end

  def respond_to?(method_name, include_private: false)
    proxy_method_name = @proxy_object.methods
    if proxy_method_name.include?(method_name)
      true
    else
      super(method_name, include_private)
    end
  end

  def called?(msg)
    @messages.include?(msg)
  end

  def number_of_times_called(msg)
    @messages.count(msg)
  end
end
