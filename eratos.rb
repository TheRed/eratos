class Eratos
  def initialize(max_num)
    search_list = [*(2..max_num)]
    print "search_list= "
    p search_list

    @primes = []
    while (search_list.first < Math.sqrt(max_num)) do
      print "@primes= "
      p @primes << search_list.shift
      search_list.reject! { |num| (num % @primes.last) == 0 }
      print "search_list_rejected= "
      p search_list
    end
    @primes.concat(search_list)
    print "@primes finish= "
    p @primes
  end
  attr_reader :primes

  if $0 == __FILE__
    puts self.new(ARGV[0].to_i).primes.join(", ")
  end
end
