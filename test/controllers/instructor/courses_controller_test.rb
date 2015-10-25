require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase

  test "get instructor courses" do
    course = FactoryGirl.create(:course)
    user = FactoryGirl.create(:user)
    sign_in user

    get :show, :id=>course.id
    assert_response :success
  end
end
