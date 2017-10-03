require 'spec_helper'
require 'date'
require './lib/errors/not_kind_of_time'

RSpec.describe 'Time coercion' do
  let(:time) { Time.new(2017, 10, 2) }
  let(:date) { Date.new(2017, 10, 2) }
  let(:datetime) { DateTime.new(2017, 10, 2, 21, 0) }

  describe 'will return single result for' do
    it 'time and date' do
      time_result = Weekend.nearest_sunday(time)
      date_result = Weekend.nearest_sunday(date)

      expect(time_result).to eql(date_result)
    end

    it 'time and datetime' do
      time_result = Weekend.nearest_sunday(time)
      datetime_result = Weekend.nearest_sunday(datetime)

      expect(time_result).to eql(datetime_result)
    end

    it 'date and datetime' do
      date_result = Weekend.nearest_sunday(date)
      datetime_result = Weekend.nearest_sunday(datetime)

      expect(date_result).to eql(datetime_result)
    end
  end

  describe 'will raise error if not time given' do
    let(:not_time) { 'not_time' }

    it 'with correct class NotKindOfTimeError' do
      expect { Weekend.on_date?(not_time) }.to raise_error(NotKindOfTimeError)
    end

    it 'with correct message include "not respond to #to_time"' do
      expect { Weekend.on_date?(not_time) }
        .to raise_error(/not respond to #to_time/)
    end
  end
end
