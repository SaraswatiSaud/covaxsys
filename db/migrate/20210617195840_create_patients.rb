# frozen_string_literal: true

# Create Patients Database
class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :contact_number
      t.text :current_medications
      t.text :additional_info
      t.string :appointment_date
      t.string :appointment_time
      t.references :user
      t.timestamps
    end
  end
end
