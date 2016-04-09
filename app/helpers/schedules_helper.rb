module SchedulesHelper
  def weeks_term_of(week_num)
    today = Date.today
    start_date = (today - today.wday) + (week_num * 7).days
    end_date = start_date + 7.days
    { start_date: start_date, end_date: end_date }
  end
end
