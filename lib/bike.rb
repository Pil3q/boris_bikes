class Bike
  attr_reader :status
  def initialize(status = true)
    @status = status
  end
  def working?
    @status
  end
  def broken
    @status = false
  end
end
