require 'spec_helper'
require 'time'

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

  describe '#today?' do
    context 'when weekend' do
      let(:weekend) { Time.parse('2017-10-07 6:00:40 +0300') }
      before { allow(Time).to receive(:now).and_return weekend }

      it 'return true' do
        expect(Weekend.today?).to be true
      end
    end

    context 'when weekday' do
      let(:weekday) { Time.parse('2017-10-03 6:00:40 +0300') }
      before { allow(Time).to receive(:now).and_return weekday }

      it 'return false' do
        expect(Weekend.today?).to be false
      end
    end
  end
end
