require 'spec_helper'

describe "courses/index" do
  before(:each) do
    assign(:courses, [
      stub_model(Course,
        :course_name => "Course Name",
        :limit => 1
      ),
      stub_model(Course,
        :course_name => "Course Name",
        :limit => 1
      )
    ])
  end

  it "renders a list of courses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Course Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
