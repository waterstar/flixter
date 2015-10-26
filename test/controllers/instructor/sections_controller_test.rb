require 'test_helper'

class Instructor::SectionsControllerTest < ActionController::TestCase

  test "post instructor section login" do
    course = FactoryGirl.create(:course)
    user = FactoryGirl.create(:user)
    sign_in user do
      post :create, :course_id => course.id, "section" => { :title => "FactoryGirl test"}
      assert_redirected_to instructor_course_path(course)
    end
    sign_out user
  end

  test "post instructor section without login" do
    course = FactoryGirl.create(:course)

    post :create, :course_id => course.id, "section" => { :title => "FactoryGirl test 2"}
    assert_response :unauthorized
  end

  test "only user who created the course can add sections to the course" do
  end

end
