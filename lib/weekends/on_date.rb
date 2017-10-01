module Weekends
  module OnDate
    def on_date?(date)
      date.wday.zero? || date.wday == 6
    end
  end
end
