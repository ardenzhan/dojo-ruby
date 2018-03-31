# My Enumerable

module MyEnumerable
  def my_each
    for i in 0...self.size
      yield self[i]
    end
  end

  def my_any
    for i in 0...self.size
      return true if yield self[i]
    end
    return false
  end
  
end

class Array
  include MyEnumerable
end

[1,2,3,4].my_each { |i| puts i }      # => 1 2 3 4
[1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40
puts [1,2,3,4].my_any { |i| i < 0 }   # => false
puts [1,2,3,4].my_any { |i| i < 2 }   # => true
