require_relative 'shuffle_sort'

class Array
  def average
    self.inject(:+) / self.length
  end
end

class Sorter
  attr_reader :array_size, :reps
  def initialize array_size=100, reps=100
    @array_size = array_size
    @reps = reps
    @loops = 0
  end

  def arr
    (1..array_size).to_a.shuffle
  end

  def shuffle_sort
    results = []
    reps.times { results << ShuffleSort.mysort(arr) }
    return_results results
  end

  def return_results results
    {min: results.min, max: results.max, average: results.average}
  end
end