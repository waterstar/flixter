class LessonsController < ApplicationController
  before_action :authenticate_user!

  def show
      unless current_user.enrolled_in?(current_lesson.section.course)
        redirect_to course_path(current_lesson.section.course), :alert => 'Enroll the course to view lesson' 
      end
  end

  private
  helper_method :current_lesson
  def current_lesson
    current_lesson ||= Lesson.find(params[:id])
  end
end
