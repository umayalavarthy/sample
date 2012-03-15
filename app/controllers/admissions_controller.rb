class AdmissionsController < ApplicationController

 # before_filter :authenticate_user!
# before_filter :authenticate #, :except =>[:index]
before_filter :authenticate_teacher!

  
  def index

   # page = params[:page] || 1
    @admissions= Admission.all
    #, :page => page , :per_page=> 10)

  end

  def new
    @admission= Admission.new
      
  end

  def show
    @admission= Admission.find(params[:id])
  end

  def create
    @admission = Admission.new(params[:admission])
   if @admission.save
        redirect_to :action=>'home'
      else
        render :action=>'new'

    end
  end


  def edit
    @admission = Admission.find(params[:id])
  end


  def update
      @admission = Admission.find(params[:id])
      @admission.update_attributes(params[:admission])
      redirect_to @admission, :flash =>{:success=>'successful'}
  end

 def home
   page = params[:page] || 1
    @admissions= Admission.paginate(:all, :page => page , :per_page=> 10)

 end

 def destroy
    @admission = Admission.find(params[:id])
    @admission.destroy
    redirect_to :action=>'home'
 end

 def contactus
   #layout :false
   
 end

 
end
