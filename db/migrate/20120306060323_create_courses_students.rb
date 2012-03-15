class CreateCoursesStudents < ActiveRecord::Migration

  def self.up
    create_table :courses_students do |t|
      t.integer :course_id, :null => false
      t.integer :student_id, :null => false
      t.references :students
      t.references :courses
      t.timestamps
   end
  end

  def self.down
    drop_table :courses_students
  end
end
