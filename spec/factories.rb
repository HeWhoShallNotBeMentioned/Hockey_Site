FactoryGirl.define do
  factory :post do
    title "Larkin Rules"
    body "Larkin is the new Yzerman."
  end

  factory :user do
    username "Stevie_Y"
    email "S_Yzerman567@AOL.com"
    password "password"
    admin true
  end

  factory :comment do
    body "Your mama smells like turpentine..."
  end
end
