class LessonsController < ApplicationController
  before_action :authenticate_user!

  def show
      unless current_user.enrolled_in?(current_lesson_course)
        redirect_to course_path(current_lesson_course), :alert => 'Enroll the course to view lesson' 
      else
        page_id = params[:id]
        render "static_pages/pinyin-1-" + page_id + ".html.erb"
      end
  end

  private
  helper_method :current_lesson
  def current_lesson
    current_lesson ||= Lesson.find(params[:id])
  end

  def current_lesson_course
    lesson_course ||= current_lesson.section.course
  end
end
