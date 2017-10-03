module Weekends
  module OnDate
    def on_date?(date)
      date = time_coerced(date)
      date.wday.zero? || date.wday == 6
    end

    def today?
      on_date?(Time.now)
    end
  end
end
