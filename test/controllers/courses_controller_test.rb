require 'test_helper'

class CoursesControllerTest < ActionController::TestCase

  test "get instructor courses" do
    course = FactoryGirl.create(:course)
    user = FactoryGirl.create(:user)
    sign_in user

    get :show, :id=>course.id, :controller=>"instructor\/courses"
    assert_response :success
  end
end
