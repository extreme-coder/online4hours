class Trie
  def initialize
    @root = TrieNode.new('')

  end

  def add_word(word)

    letters = word.split('')
    prev_node = @root
    prefix = ''
    letters.each do |letter|
      prefix += letter
      child = prev_node.find_child(prefix)
      if child == false
        child = prev_node.add_child(prefix)
      else
        child.increase_score
      end
      prev_node = child
    end
  end

  def find_words(part)
    letters = part.split('')
    prev_node = @root
    prefix = ''
    letters.each do |letter|
      prefix += letter
      prev_node = prev_node.find_child(prefix)
      if prev_node == false
        return []
      end
    end
    words = prev_node.traverse
    words = words.sort{|w1, w2| w2.score <=> w1.score}[0..2]
  end



  def find_all_words
    @root.traverse
  end

  def add_words_from_file(filename)
    File.open(filename).each do |line|
      line.split.each do |word|
        self.add_word(word)
      end
    end
  end
end