class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
#/students/1
  def show
    @student = Student.find(params[:id])
  end
#/students/new  
  def new
  end

  def create
    @student = Student.create(
      {
        first_name: params[:first_name],
        last_name: params[:last_name]
      }
    )
    redirect_to student_path(@student)
  end
end