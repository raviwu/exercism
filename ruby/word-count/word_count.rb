class Phrase
  def initialize(sentence)
    @sentence = sentence
    @word_count = Hash.new(0)

    check_word_count
  end

  def word_count
    @word_count
  end

  private

  def check_word_count
    @sentence.downcase.scan(/\b[\w']+\b/) do |word|
      @word_count[word] += 1
    end
  end
end

module BookKeeping
  VERSION = 1
end
