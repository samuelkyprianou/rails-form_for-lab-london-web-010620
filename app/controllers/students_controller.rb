class StudentsController < ApplicationController
    def index
       
    end
  
    def show
     @student = Student.find(params[:id])
    end
  
    def new
        @student = Student.new
    end
  
    def create
        @student = Student.new
        @student.last_name = params[:student][:last_name]
        @student.first_name = params[:student][:first_name]
        @student.save
        redirect_to student_path(@student)
    end
  
    def edit
        @student = Student.find(params[:id])
    end
     
    def update
        @student = Student.find(params[:id])
        @student.last_name = params[:student][:last_name]
        @student.first_name = params[:student][:first_name]
        @student.save
        redirect_to student_path(@student)
    end
end
