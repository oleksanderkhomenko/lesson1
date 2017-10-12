require 'date'
class Lesson1
  def sum(val = 0)
    val.to_s.split(//).map(&:to_i).inject(:+)
  end

  def age(birthday)
  end

  def name
    # TODO
  end
end
