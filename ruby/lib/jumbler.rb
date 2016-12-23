class Jumbler
  def self.jumble(length=100, min=-100, max=100)
  #   check_inputs
    jumble = []
    length.times{ jumble << (min..max).to_a.sample }
    jumble
  end
end