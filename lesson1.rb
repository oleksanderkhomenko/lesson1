require 'date'
require 'time'

class Lesson1
  def sum(val = 0)
    val.to_s.split(//).map(&:to_i).inject(:+)
  end

  def age(birthday)
    seconds = (Time.new - Time.parse(birthday)).round
    minutes = seconds / 60
    hours = minutes / 60
    days = hours / 24
    years = days / 365
    "Я живу #{years} років або #{days} днів або #{hours}" \
    " годин або #{minutes} хвилин або #{seconds} секунд"
  rescue StandardError
    'Invalid Date Format'
  end

  def name
    a = []
    3.times { a << gets }
    "Hello #{a.join(' ')}!"
  end
end
