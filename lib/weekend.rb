require 'weekends/version'
require 'weekends/nearest'
require 'weekends/on_date'

class Weekend
  class << self
    include Weekends::Nearest
    include Weekends::OnDate

    private

    def time_coerced(date)
      return date if date.instance_of?(Time)
      raise NotKindOfTimeError unless date.respond_to?(:to_time)

      date.to_time
    end
  end
end
