class AddCourseToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :course, :string
  end

  def self.down
    remove_column :students, :course
  end
end
