class RadicalController < ApplicationController
  def radical

  end

  def radical_submit
    @num = params[:radical][:num].to_f
    @root = params[:radical][:root].to_f
    @accuracy = 5

    left = 0
    right = @num
    @answer = @num
    loop do
      @answer = (left + right) / 2.0
      if @answer ** @root < @num
        left = @answer
      else
        right = @answer
      end
      puts "#{@answer} - #{(@answer ** @root).round(@accuracy)}"
      if (@answer ** @root).round(@accuracy) == @num
        break
      end
    end
  end
end