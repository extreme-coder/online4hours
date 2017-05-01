class TrumpController < ApplicationController
  def complete
    prefix = params[:prefix]

    trie = get_trie
    suggestions = trie.find_words(prefix)
    render :json => suggestions.map{|w| w.word}.as_json
  end

  def trump_speak

  end

  def get_trie
    trie = Rails.cache.read("trie")
    if trie.nil?
      trie = Trie.new
      trie.add_words_from_file('db/tweets.txt')
      Rails.cache.write("trie", trie)
    end
    return trie
  end

end