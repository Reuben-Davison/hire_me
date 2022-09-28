FactoryBot.define do
  factory :company do
    name            { Faker::Company.name }
    location_city   { Faker::Nation.capital_city }
    location_state  { Faker::Address.state }
    description     {Faker::Lorem.paragraph(sentence_count: 3)}
    website         {Faker::Internet.domain_name}
    industry        {Faker::IndustrySegments.sector}
    company_size    { rand(1..2000).to_s }

  end
end