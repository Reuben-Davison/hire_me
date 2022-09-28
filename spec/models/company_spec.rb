require 'rails_helper'

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
end