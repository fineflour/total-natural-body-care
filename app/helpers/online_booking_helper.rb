module OnlineBookingHelper
  def formatted_date(date)
    date.strftime("%m/%d/%y") unless date.nil?
  end

  def formatted_time(time)
    time.strftime("%l:%M %p") unless time.nil?
  end
end
