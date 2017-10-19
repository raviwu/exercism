class Pangram
  def self.pangram?(phrase)
    phrase.downcase.chars.keep_if { |c| c =~ /[a-z]/ }.uniq.size == 26
  end
end

module BookKeeping
  VERSION = 5
end
