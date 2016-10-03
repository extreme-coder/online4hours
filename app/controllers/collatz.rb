class Collatz
  def initialize(num)
    @num = num
    @steps = find_steps(num)
  end

  def steps
    @steps
  end

  def number
    @num
  end

  def find_steps(num)
    counter = 0
    #checking if it is a float
    unless num.to_i == num
      raise "This program does not accept floats."
    end

    num = num.to_i
    orig_num = num

    loop do
      if num.even?
        num /= 2
      else
        num = 3*num + 1
      end
      if 1 == num
        return counter
        break
      else
        counter += 1
      end
    end
  end

  #static methods
  def self.find_max_steps(limit)
    objs = []
    limit.times do |idx|
      objs << Collatz.new(idx+1)
    end
    #finding max steps
    return objs.max{ |a,b| a.steps <=> b.steps }
  end

  def self.find_smallest_steps(coef)
    idx = 1
    loop do
      collatz = Collatz.new(idx)
      if collatz.steps > coef * idx
        return collatz
      end
      idx += 1
    end
  end
end