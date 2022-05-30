class StudentsController < ApplicationController

  def index
    students = Student.includes(:last_name, :first_name params[:name])
    render json: students
  end

  def show
    student = Student.find_by_id(params[:id])
    render json: student
  end

end
