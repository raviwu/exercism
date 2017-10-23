class Bob
  def self.hey(remark)
    if /[A-Z]+/ =~ remark && remark.upcase == remark
      'Whoa, chill out!'
    elsif /\?[[:space:]]*\z/ =~ remark
      'Sure.'
    elsif /\A[[:space:]]*\z/ =~ remark
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end

module BookKeeping
  VERSION = 1
end
