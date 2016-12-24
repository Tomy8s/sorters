class Jumbler
  def self.jumble(length=100, min=-100, max=100)
    self.check_inputs(length, min, max)
    jumble = []
    length.times{ jumble << (min..max).to_a.sample }
    jumble
  end

  def self.check_inputs(length, min, max)
    if length.class != Fixnum or length < 1 then raise ArgumentError, 'length must be a positive integer' end
    if min > max then raise ArgumentError, 'max must be more than min' end
  end
end