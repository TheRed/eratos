require 'spec_helper'
require File.expand_path(File.dirname(__FILE__) + '/../eratos')

describe 'Eratos' do
  specify {
    expect(Eratos.new(30).primes).to \
    eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  }
  specify {
    expect(Eratos.new(120).primes).to \
    eq [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113]
  }
end
