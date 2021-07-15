class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :reference_number
      t.string :postcode
      t.string :city
      t.integer :site_area
      t.integer :gross_internal_area
      t.integer :net_internal_area
      t.integer :storeys
      t.boolean :basement
      t.integer :potential_homes
      t.integer :total_landowner_earnings
      t.integer :increase_in_landowner_earnings
      t.integer :gross_development_value
      t.integer :cost_of_development
      t.integer :cost_of_work_stages_2_to_3
      t.integer :cost_of_work_stages_4_to_6
      t.integer :residual_land_value
      t.string :development_type
      t.integer :work_stage_2_to_3_programme_mths
      t.integer :work_stage_4_to_6_programme_mths
      t.string :existing_land_ownership
      t.string :proposed_ownership
      t.integer :work_stage_2_to_3_roi
      t.integer :work_stage_4_to_6_roi
      t.integer :average_unit_value

      t.timestamps
    end
  end
end
