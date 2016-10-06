class Collatz
  def initialize(num)
    @num = num
    @all_steps = []
    @steps = find_steps(num)
  end

  def steps
    @steps
  end

  def all_steps
    @all_steps
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
        @all_steps << "#{num} / 2 = #{num / 2}"
        num /= 2
      else
        @all_steps << "3 * #{num} + 1 = #{3 * num + 1}"
        num = 3*num + 1
      end
      counter += 1
      if 1 == num
        return counter
        break
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