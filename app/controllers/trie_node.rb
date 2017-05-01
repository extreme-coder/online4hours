class TrieNode
  def initialize(letter)
    @letter = letter
    @children = []
    @is_end = true
    @score = 0
  end

  def children
    @children
  end

  def letter
    @letter
  end

  def find_child(letter)
    @children.each do |child|
      if child.letter == letter
        return child
      end
    end
    return false
  end

  def increase_score
    @score = @score + 1
  end

  def add_child(letter)

    child  = TrieNode.new(letter)
    @children << child
    @is_end = false
    return child
  end

  def traverse
    if @is_end
      return [Word.new(@letter, @score)]
    else
      words = []
      @children.each do|child|
        child.traverse.each do |word|
          words << word
        end
      end
      return words
    end
  end
end