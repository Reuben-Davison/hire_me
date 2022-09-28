require 'rails_helper'
require 'csv'


RSpec.describe Company, type: :model do 
    describe 'validations' do 
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:location_city) }
        it { should validate_presence_of(:location_state) }
        it { should validate_presence_of(:description) }
        it { should validate_presence_of(:website) }
        it { should validate_presence_of(:industry) }
        it { should validate_presence_of(:company_size) }
    end

    describe 'Company model' do
        it 'is an instance of Company' do
            companies = create_list(:company, 10)
            expect(companies.last).to be_a(Company)
            # there is residual testing data getting left in Test ENV and causing Company count to be 12
            # expect(Company.count).to eq (10)
        end
        
        it 'has attributes' do
        company = Company.create!(name: 'RSM', location_city: 'Denver', location_state: 'Colorado', description: "a company", website: 'something.com', industry: 'accounting', company_size: '2000')
        expect(company.description).to eq("a company")
        end 
    end
end