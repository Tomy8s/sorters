class ShuffleSort
  def self.mysort(arr)
    loops = 0
    # print 'Loop ' + loops.to_s + ' ' + arr.to_s + "\n"
    until arr == arr.sort || loop == 1000
      loops += 1
      arr = arr.shuffle
      # print 'Loop ' + loops.to_s + ' ' + arr.to_s + "\n"
    end
    loops
  end
end