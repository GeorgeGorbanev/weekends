class NotKindOfTimeError < StandardError
  def initialize(message = nil)
    super(message || default_message)
  end

  private

  def default_message
    'Argument not respond to #to_time (not kind of Time, Date or DateTime)'
  end
end
