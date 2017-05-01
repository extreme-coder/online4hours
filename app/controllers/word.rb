class Word
  def initialize(word, score)
    @word = word
    @score = score
  end

  def display
    "#{@word} - #{@score + 1}"
  end

  def score
    @score
  end
  def word
    @word
  end
end