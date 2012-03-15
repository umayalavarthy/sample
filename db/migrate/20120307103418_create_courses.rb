class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :course_name
      t.integer :limit

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
