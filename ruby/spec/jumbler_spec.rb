require 'spec_helper'

describe Jumbler do
  describe '.jumble' do
    context 'no params' do
      it 'returns an array with 100 items' do
        expect(subject.class.jumble.length).to eq 100
      end
    end

    context 'given correct params' do
      leng = rand(100)
      max = rand(500)
      min = rand(-100..50)

      it 'returns an array with leng items' do
        expect(subject.class.jumble(leng).length).to eq leng
      end

      it 'returns an array with 100 items no lower than min' do
        jumb = subject.class.jumble(100, -100, max)
        jumb.each do |i|
          expect(i).to be <= max
        end
      end

      it 'returns an array with 100 items no higher than max' do
        jumb = subject.class.jumble(100, min)
        jumb.each do |i|
          expect(i).to be >= min
        end
      end
    end

    context 'given erroneous params' do
      it 'throws an error for length less than 1' do
        expect{ subject.class.jumble(-1) }.to raise_error ArgumentError
      end

      it 'throws an error for length not Fixnum' do
        expect{ subject.class.jumble('hello') }.to raise_error ArgumentError
      end

      it 'throws an error for min not Fixnum' do
        expect{ subject.class.jumble(100, 'hello') }.to raise_error ArgumentError
      end

      it 'throws an error for max not Fixnum' do
        expect{ subject.class.jumble(100, -100, 'hello') }.to raise_error ArgumentError
      end

      it 'throws an error if min is more than max' do
        expect{ subject.class.jumble(100, 100, -100) }.to raise_error ArgumentError
      end
    end
  end
end