class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :name
      t.string :student_id
      t.integer :standard
      t.integer :rank
      t.string :conduct
      t.integer :course_id
      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
