require 'rails_helper'

RSpec.describe "schedules/edit", type: :view do
  before(:each) do
    @schedule = assign(:schedule, Schedule.create!(
      :title => "MyString",
      :description => "MyText",
      :finished => false
    ))
  end

  it "renders the edit schedule form" do
    render

    assert_select "form[action=?][method=?]", schedule_path(@schedule), "post" do

      assert_select "input#schedule_title[name=?]", "schedule[title]"

      assert_select "textarea#schedule_description[name=?]", "schedule[description]"

      assert_select "input#schedule_finished[name=?]", "schedule[finished]"
    end
  end
end
