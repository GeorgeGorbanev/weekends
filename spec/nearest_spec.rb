require 'spec_helper'

RSpec.describe Weekend do
  let(:monday) { Time.new(2017, 10, 2) }

  let(:saturday) { Time.new(2017, 10, 7) }
  let(:next_saturday) { Time.new(2017, 10, 14) }

  let(:sunday) { Time.new(2017, 10, 8) }
  let(:next_sunday) { Time.new(2017, 10, 15) }

  describe '#nearest_saturday' do
    it 'return first saturday when given monday' do
      expect(Weekend.nearest_saturday(monday)).to eql(saturday)
    end

    it 'return next saturday when given saturday' do
      expect(Weekend.nearest_saturday(saturday)).to eql(next_saturday)
    end
  end

  describe '#nearest_sunday' do
    it 'return first sunday when given monday' do
      expect(Weekend.nearest_sunday(monday)).to eql(sunday)
    end

    it 'return next sunday when given sunday' do
      expect(Weekend.nearest_sunday(sunday)).to eql(next_sunday)
    end
  end

  describe '#nearest_full_weekends' do
    it 'return first weekends when given monday' do
      expect(Weekend.nearest_full_weekends(monday)).to eql(saturday..sunday)
    end

    it 'return next weekends when given saturday' do
      next_weekends = next_saturday..next_sunday
      expect(Weekend.nearest_full_weekends(saturday)).to eql(next_weekends)
    end
  end
end
