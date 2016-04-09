class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :title, :schedule_date, :description, :finished
end
