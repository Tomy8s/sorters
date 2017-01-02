require 'spec_helper'

describe Sorter do
  describe '#initialize' do
    it 'can initialize with no arguments given' do
      Sorter.new
    end
  end

  describe '#array_size' do
    it 'defaults to 100' do
      expect(subject.array_size).to eq 100
    end

    it 'can initialize with an array size' do
      subject = Sorter.new 5
      expect(subject.array_size).to eq 5
    end
  end

  describe '#reps' do
    it 'defaults to 100' do
      expect(subject.reps).to eq 100
    end

    it 'can initialize with a repitition' do
      subject = Sorter.new 100, 5
      expect(subject.reps).to eq 5
    end
  end

  describe '#shuffle_sort' do
    it 'returns a Fixnum as [min]' do
      subject = Sorter.new 5
      expect(subject.shuffle_sort[:min]).to be_a Fixnum
    end

    it 'returns a Fixnum as [max]' do
      subject = Sorter.new 5
      expect(subject.shuffle_sort[:max]).to be_a Fixnum
    end

    it 'returns a Fixnum as [average]' do
      subject = Sorter.new 5
      expect(subject.shuffle_sort[:average]).to be_a Fixnum
    end
  end
end