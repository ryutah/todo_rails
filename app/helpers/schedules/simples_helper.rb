module Schedules::SimplesHelper
  %w(index edit new show).each do |type|
    define_method "locals_#{type}_string" do |key|
      "schedules.simples.#{type}.#{key}"
    end
  end

  def weeks_term_of(week_num)
    today = Date.today
    start_date = (today - today.wday) + (week_num * 7).days
    end_date = start_date + 7.days
    { start_date: start_date, end_date: end_date }
  end
end
