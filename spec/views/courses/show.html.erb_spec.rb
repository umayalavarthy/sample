require 'spec_helper'

describe "courses/show" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :course_name => "Course Name",
      :limit => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Course Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
