require 'spec_helper'

RSpec.describe Weekend do
  let(:monday) { Time.new(2017, 10, 2) }
  let(:tuesday) { Time.new(2017, 10, 3) }
  let(:wednesday) { Time.new(2017, 10, 4) }
  let(:thursday) { Time.new(2017, 10, 5) }
  let(:friday) { Time.new(2017, 10, 6) }
  let(:saturday) { Time.new(2017, 10, 7) }
  let(:sunday) { Time.new(2017, 10, 8) }

  describe '#on_date?' do
    it 'return false for weekdays' do
      expect(Weekend.on_date?(monday)).to be false
      expect(Weekend.on_date?(tuesday)).to be false
      expect(Weekend.on_date?(wednesday)).to be false
      expect(Weekend.on_date?(thursday)).to be false
      expect(Weekend.on_date?(friday)).to be false
    end

    it 'return true for weekends' do
      expect(Weekend.on_date?(saturday)).to be true
      expect(Weekend.on_date?(sunday)).to be true
    end
  end
end
