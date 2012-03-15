class StudentsController < ApplicationController

  before_filter :authenticate_teacher!
  
  def index
    @student=Student.all
  end

  def show
    @student=Student.find(params[:id])
  end

  def searching
    @max=Student.find(:all,:conditions=>['name LIKE ?',"#{params[:name]}%"])
  end

  def new
    @student=Student.new
    @course=Course.all
  end

  def create
    @course=Course.all
    @student = Student.new(params[:student])
    @student.save
    redirect_to :action=>'index'
  end

  def search
    #@max=Student.find(:all,:conditions=>['student_id LIKE ?',"#%{params[:student_id]}%"])
  end

def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to :action=>'index'
 end
 
def find1
  @st=Student.find(:all)
end

def find
  @course=Course.find_all_by_course_name(params[:id])

end

end
