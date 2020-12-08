class Teller

  attr_accessor :count
  attr_reader :time

  def initialize(name,time)
    @name = name
    @time = time
    @count = 0
  end

  def to_s
    "Teller #{@name} completed #{@count} transactions in #{@count * @time} minutes"
  end
end
