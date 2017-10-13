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
    alphabet = (:a..:z).to_a
    @array.map { |i| alphabet[i - 1] }
  end

  def switch
    min, max = @array.minmax
    @array.map do |x|
      if x == max
        min
      elsif x == min
        max
      else
        x
      end
    end
  end

  def before_min
    @array.slice(0, @array.rindex(@array.min))
  end

  def three_smallest
    @array.min(3)
  end
end
