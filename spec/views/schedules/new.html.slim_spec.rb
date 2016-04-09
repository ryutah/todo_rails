require 'rails_helper'

RSpec.describe "schedules/new", type: :view do
  before(:each) do
    assign(:schedule, Schedule.new(
      :title => "MyString",
      :description => "MyText",
      :finished => false
    ))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do

      assert_select "input#schedule_title[name=?]", "schedule[title]"

      assert_select "textarea#schedule_description[name=?]", "schedule[description]"

      assert_select "input#schedule_finished[name=?]", "schedule[finished]"
    end
  end
end
