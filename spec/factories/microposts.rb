FactoryBot.define do
  factory :sample, class: Micropost do
<<<<<<< HEAD
    user_id { 1 }
    content { 'test' }
  end
  factory :example, class: Micropost do
    user_id { 2 }
    content { 'sample' }
=======
    user_id { 1 }
    content { 'test' }
  end
  factory :example, class: Micropost do
    user_id { 2 }
    content { 'sample' }
  end
  factory :micropost do
    content { 'sample content' }
    user_id { 1 }

    trait :over_140 do
      content { 'a' * 141 }
    end
    trait :just_140 do
      content { 'a' * 140 }
    end
    trait :below_140 do
      content { 'a' * 139 }
    end
>>>>>>> f17771b7a9a722efa1a3fabe79cdb55b0d536754
  end
end
