class Student < ActiveRecord::Base
  validates :name, :presence =>true
 validates :student_id, :presence =>true
  validates :standard, :presence =>true
  validates :conduct, :presence =>true
validates :course, :presence =>true
   has_attached_file :avatar
  # , :styles => { :medium => "300x300>", :thumb => "100x100>" }
    has_many :courses_students
    has_many :courses, :through => :courses_students


end
