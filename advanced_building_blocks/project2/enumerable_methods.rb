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

  #TEST FOR #my_any?
  # numbers = [1, 2, 3, 4, 5, 6]
  # p numbers.my_any? { |x| x != 4 }

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

  #TEST FOR #my_none?
  # numbers = [1, 2, 3, 4, 5]
  # p numbers.my_none? {|x| x.is_a?(String) }

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

  #TEST FOR #my_count
  # strings = ["one", "two", "three", "four"]
  # p strings.my_count

  #my_map: The first iteration (take a block)
  def my_map_one
    i = 0
    new_array = []
    while i < self.size
      new_array << yield(self[i])
      i += 1
    end
    new_array
  end

  #my_map: The second iteration (take a Proc object instead of a block)
  def my_map_two(&block)
    i = 0
    new_array = []
    while i < self.size
      new_array << block.call(self[i])
      i += 1
    end
    new_array
  end

  #my_map: The third iteration (take a Proc object as a parameter variable or a block)
  def my_map_three(param = nil)
    i = 0
    new_array = []
    while i < self.size
      if param == nil && block_given?
        new_array << yield(self[i])
      elsif param != nil && block_given?
        new_array << param.call(self[i])
      end
      i += 1
    end
    new_array
  end

  #TEST FOR #my_map
   numbers = [1, 2, 3, 4, 5, 6]
   a_proc_as_a_variable = Proc.new { |x| "#{x} has been mapped with a Proc as a variable" }
  # p numbers.my_map(a_proc)
  # p numbers.my_map { |x| "#{x} has been passed a block, not the Proc" }
   p numbers.my_map_three(a_proc_as_a_variable) { |el| "#{el} has been mapeed with a naked block" }

  #my_inject
  def my_inject(initialValue = nil, symbol = nil)
    if initialValue != nil && symbol != nil
      self.my_each { |num| initialValue = initialValue.method(symbol).call(num) }
      initialValue
    elsif initialValue != nil && initialValue.is_a?(Symbol) && symbol == nil
      memo, *remaining_elements = self
      remaining_elements.my_each { |num| memo = memo.method(initialValue).call(num) }
      memo
    elsif initialValue != nil && initialValue.is_a?(Integer) && symbol == nil
      self.my_each { |num| initialValue = yield(initialValue, num) }
      initialValue
    elsif initialValue == nil && symbol == nil
      initialValue, *remaining_elements = self
      remaining_elements.my_each { |num| initialValue = yield(initialValue, num) }
      initialValue
    end
  end

  #TESTS FOR
  #my_inject
  #p [2, 4, 5].my_inject(1, :+)
  #p [2, 4, 5].my_inject(:*)
  #p [2, 4, 5].my_inject(2) { |memo, n| memo + n }
  #p [2, 4, 5].my_inject { |memo, n| memo + n }
end

def multiply_els(arr)
  arr.my_inject(:*)
end

#p multiply_els([2, 4, 5])
