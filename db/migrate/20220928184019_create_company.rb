class CreateCompany < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location_city
      t.string :location_state
      t.text :description
      t.text :website
      t.string :company_size

      t.timestamps
    end
  end
end
