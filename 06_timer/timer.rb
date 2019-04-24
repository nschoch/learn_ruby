class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  def seconds=(n)
    @seconds = n.to_i
  end

  def seconds
    @seconds
  end

  def time_string
    hours = @seconds / (60*60)
    remainder = @seconds % (60*60)
    minutes = remainder / 60
    remainder = remainder % 60
    "#{hours.to_s.rjust(2,'0')}:#{minutes.to_s.rjust(2,'0')}:#{remainder.to_s.rjust(2,'0')}"
  end

end

test = Timer.new
puts "hi"

test.seconds = 8000
puts test.seconds
puts test.time_string