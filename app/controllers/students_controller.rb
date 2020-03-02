class StudentsController < ApplicationController
    before_action :get_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def new
      @student = Student.new
  end

  def edit
  end

  def create
      @student = Student.create(student_params)
      if @student.valid?
          redirect_to student_path(@student)
      else
          render :new
      end
  end

  def update
      @student.update(student_params)
      redirect_to student_path(@student)
  end

  private

  def get_student
      @student = Student.find(params[:id])
  end

  def student_params
      params.require(:student).permit(:name, :mod)
  end

end
