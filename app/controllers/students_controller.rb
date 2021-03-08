class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    
    @student = Student.find(params[:id])
    
  end

  

  def edit
    @student = Student.find(params[:id])
    @info = Student.all

  end

  
  def update
    @student = Student.find params[:id]
    @student.update
    redirect_to @student
  end

  
  private

    def set_student
      @student = Student.find(params[:id])
    end
end