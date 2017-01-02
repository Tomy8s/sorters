class ShuffleSort
  def self.my_sort(arr)
    loops = 0
    until arr == arr.sort
      loops += 1
      arr = arr.shuffle
    end
    loops
  end
end