class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.size
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.values_at(* @array.each_index.select { |i| @array[i].odd? })
  end

  def multiple_to_three
    @array.values_at(* @array.each_index.select { |i| (@array[i] % 3).zero? })
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map { |i| i.fdiv(10) }
  end

  def chars
    @array.map { |i| alphabet[i] }
  end

  def switch
    @array.map do |x|
      if x == max
        @array.min
      elsif x == min
        @array.max
      else
        x
      end
    end
  end

  def before_min
    # TODO
  end

  def three_smallest
    # TODO
  end
end
