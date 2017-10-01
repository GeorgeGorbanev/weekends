require 'weekends/version'
require 'weekends/nearest'
require 'weekends/on_date'

class Weekend
  class << self
    include Weekends::Nearest
    include Weekends::OnDate
  end
end
