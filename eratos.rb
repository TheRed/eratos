class Eratos
  def initialize(max_num)
    search_list = [*(2..max_num)]
    @primes = []
    while (search_list.first < Math.sqrt(max_num)) do
      @primes << search_list.shift
      search_list.reject! { |num| (num % @primes.last) == 0 }
    end
    @primes.concat(search_list)
  end
  attr_reader :primes

  if $0 == __FILE__
    puts self.new(ARGV[0].to_i).primes.join(", ")
  end
end
