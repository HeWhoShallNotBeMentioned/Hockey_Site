FactoryGirl.define do
  factory :post do
    title "Larkin Rules"
    body "Larkin is the new Yzerman."
  end

  factory :user do
    username "Stevie_Y"
    email "S_Yzerman@AOL.com"
    password "password"
  end
end
