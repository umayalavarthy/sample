class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.xml
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.xml
  def show
    @course = Course.find(params[:id])

  end

  # GET /courses/new
  # GET /courses/new.xml
  def new
    @course = Course.new

  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.xml
  def create
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to(@course, :notice => 'Course was successfully created.') }
        format.xml  { render :xml => @course, :status => :created, :location => @course }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.xml
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to(@course, :notice => 'Course was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.xml
  def destroy
    @course = Course.find(params[:id])
    @course.destroy
  end

  def find1
      @c=Course.find(:all)
  end


  def find
   # @c=Course.find(:all)
   @courses=Student.find_all_by_course(params[:id]) 
  end


end
