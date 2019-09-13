module Enumerable
  def my_each
    i = 0
    while i < self.size
      yield(self[i])
      i += 1
    end
    self
  end

  #TEST FOR #my_each
  # [1,2,3,4].my_each do |x|
  #  puts "#{x} and a.."
  # end

  def my_each_with_index
    i = 0
    while i < self.size
      yield(self[i], i)
      i += 1
    end
    self
  end

  #TEST FOR #my_each_with_index
  # [1, 2, 3, 4].my_each_with_index do |x, i|
  #   puts "#{i}. #{x} and a.."
  # end

  def my_select
    i = 0
    new_array = []
    while i < self.size
      if yield(self[i]) == true
        new_array << self[i]
      end
      i += 1
    end
    new_array
  end

  #TEST FOR #my_select
  # numbers = [1, 2, 3, 4, 5, 6]
  # p numbers.my_select { |x| x.even? }
  # p numbers

  def my_all?
    i = 0
    while i < self.size
      if yield(self[i]) == false || yield(self[i]) == nil
        return false
      end
      i += 1
    end
    true
  end

  #TEST FOR #my_all?
  # numbers = [1, 2, 3, 4, 5]
  # p numbers.my_all? { |x| x < 6 }

  def my_any?
    i = 0
    while i < self.size
      if yield(self[i])
        return true
      end
      i += 1
    end
    false
  end

  def my_none?
    i = 0
    while i < self.size
      if yield(self[i])
        return false
      end
      i += 1
    end
    true
  end

  def my_count
    i = 0
    count = []

    if block_given?
      while i < self.size
        if yield(self[i])
          count << self[i]
        end
        i += 1
      end
      return count.size
    end
    self.size
  end

  def my_map
    i = 0
    new_array = []
    while i < self.size
      new_array << yield(self[i])
      i += 1
    end
    new_array
  end

  def my_inject(int)
    i = 0
    while i < self.size
      int = yield(int, self[i])
      i += 1
    end
    int
  end
end
