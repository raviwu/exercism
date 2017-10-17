# raindrops.rb

class Sound
  attr_reader :factor, :sound

  def initialize(factor, sound)
    @factor = factor
    @sound = sound
  end

  def echo(number)
    number % factor == 0 ? sound : nil
  end
end

class Raindrops
  ALL_SOUNDS = [
    Sound.new(3, :Pling),
    Sound.new(5, :Plang),
    Sound.new(7, :Plong)
  ]

  def self.convert(number)
    drops = ALL_SOUNDS.map { |sound| sound.echo(number) }.compact

    drops.any? ? drops.join : number.to_s
  end
end

module BookKeeping
  VERSION = 3
end
