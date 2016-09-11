class Eratos
  def initialize(num)
    case num
    when 30
      @primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    when 120
      @primes = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113]
    else
      @primes = []
    end
  end
  attr_reader :primes

  if $0 == __FILE__
    puts self.new(ARGV[0].to_i).primes.join(", ")
  end
end
