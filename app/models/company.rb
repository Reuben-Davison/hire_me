class Company < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :location_city
    validates_presence_of :location_state
    validates_presence_of :description
    validates_presence_of :website
    validates_presence_of :company_size
end