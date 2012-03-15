require 'spec_helper'

describe "courses/new" do
  before(:each) do
    assign(:course, stub_model(Course,
      :course_name => "MyString",
      :limit => 1
    ).as_new_record)
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courses_path, :method => "post" do
      assert_select "input#course_course_name", :name => "course[course_name]"
      assert_select "input#course_limit", :name => "course[limit]"
    end
  end
end
