FactoryBot.define do
  factory :sample, class: Micropost do
    user_id { 1 }
    content { 'test' }
  end
  factory :example, class: Micropost do
    user_id { 2 }
    content { 'sample' }
 end
end
