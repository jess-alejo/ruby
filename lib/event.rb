# frozen_string_literal: true

# Event handler
class Event
  attr_reader :handlers

  def initialize
    @handlers = []
  end

  def subscribe(handler)
    handlers << handler
  end

  def unsubscribe(handler)
    handlers.delete handler
  end

  def emit(*args)
    handlers.each do |handler|
      handler.call(*args)
    end
  end
end
