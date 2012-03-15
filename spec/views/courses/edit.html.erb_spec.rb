require 'spec_helper'

describe "courses/edit" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :course_name => "MyString",
      :limit => 1
    ))
  end

  it "renders the edit course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courses_path(@course), :method => "post" do
      assert_select "input#course_course_name", :name => "course[course_name]"
      assert_select "input#course_limit", :name => "course[limit]"
    end
  end
end
