class CoursesController < ApplicationController

  def new
    @school = School.find(params[:school_id])
    @course = @school.courses.new
  end

  def create
    @school = School.find(params[:school_id])
    @course = @school.courses.create(course_params)
    if @course.save!
      redirect_to @school
    else
      render 'new'
    end
  end

  def destroy
    @school = School.find(params[:school_id])
    @course = @school.courses.find(params[:id])
    @course.destroy
    redirect_to @school
  end

  private
  def course_params
    params.require(:course).permit(:title, :description, :content, :duration, :price)
  end
end
