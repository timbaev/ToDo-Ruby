# Simple event model
class Event

  attr_accessor :id, :name, :done

  def initialize(name, done)
    @name = name
    @done = done
  end

end