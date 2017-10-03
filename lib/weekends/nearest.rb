module Weekends
  module Nearest
    DAY = 86_400

    def nearest_saturday(date)
      date = time_coerced(date)

      wday = date.wday
      diff = wday == 6 ? 7 : 6 - wday
      date + diff * DAY
    end

    def nearest_sunday(date)
      date = time_coerced(date)

      wday = date.wday
      diff = wday == 7 ? 7 : 7 - wday
      date + diff * DAY
    end

    def nearest_full_weekends(date)
      date = time_coerced(date)

      if on_date?(date)
        current_weekend_end = nearest_sunday(date)
        next_saturday = nearest_saturday(current_weekend_end)
        next_sunday = nearest_sunday(current_weekend_end)

        next_saturday..next_sunday
      else
        nearest_saturday(date)..nearest_sunday(date)
      end
    end
  end
end
