FactoryGirl.define do  factory :enrollment do
    
  end


  factory :user do
    email "dummy@test.com"
    password "12345678"
    password_confirmation "12345678"
  end

  factory :course do
    title "FG test"
    description "FG description"
    cost "100"
  end

end
