# == Schema Information
#
# Table name: schedules
#
#  id            :integer          not null, primary key
#  title         :string           not null
#  schedule_date :date             not null
#  description   :text
#  finished      :boolean          default(FALSE)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Schedule < ActiveRecord::Base
  validates :title, presence: true

  scope :schedule_between, -> (start_date, end_date) do
    where(
      'schedule_date >= :start_date and schedule_date < :end_date',
      start_date: start_date, end_date: end_date
    )
  end

  scope :unfinised, -> do
    where(
      'schedule_date <= :date and finished = :finish',
      date: Time.zone.now, finish: false
    )
  end
end
