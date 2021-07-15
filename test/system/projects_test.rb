require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Average unit value", with: @project.average_unit_value
    check "Basement" if @project.basement
    fill_in "City", with: @project.city
    fill_in "Cost of development", with: @project.cost_of_development
    fill_in "Cost of work stages 2 to 3", with: @project.cost_of_work_stages_2_to_3
    fill_in "Cost of work stages 4 to 6", with: @project.cost_of_work_stages_4_to_6
    fill_in "Development type", with: @project.development_type
    fill_in "Existing land ownership", with: @project.existing_land_ownership
    fill_in "Gross development value", with: @project.gross_development_value
    fill_in "Gross internal area", with: @project.gross_internal_area
    fill_in "Increase in landowner earnings", with: @project.increase_in_landowner_earnings
    fill_in "Net internal area", with: @project.net_internal_area
    fill_in "Postcode", with: @project.postcode
    fill_in "Potential homes", with: @project.potential_homes
    fill_in "Proposed ownership", with: @project.proposed_ownership
    fill_in "Reference number", with: @project.reference_number
    fill_in "Residual land value", with: @project.residual_land_value
    fill_in "Site area", with: @project.site_area
    fill_in "Storeys", with: @project.storeys
    fill_in "Total landowner earnings", with: @project.total_landowner_earnings
    fill_in "Work stage 2 to 3 programme mths", with: @project.work_stage_2_to_3_programme_mths
    fill_in "Work stage 2 to 3 roi", with: @project.work_stage_2_to_3_roi
    fill_in "Work stage 4 to 6 programme mths", with: @project.work_stage_4_to_6_programme_mths
    fill_in "Work stage 4 to 6 roi", with: @project.work_stage_4_to_6_roi
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Average unit value", with: @project.average_unit_value
    check "Basement" if @project.basement
    fill_in "City", with: @project.city
    fill_in "Cost of development", with: @project.cost_of_development
    fill_in "Cost of work stages 2 to 3", with: @project.cost_of_work_stages_2_to_3
    fill_in "Cost of work stages 4 to 6", with: @project.cost_of_work_stages_4_to_6
    fill_in "Development type", with: @project.development_type
    fill_in "Existing land ownership", with: @project.existing_land_ownership
    fill_in "Gross development value", with: @project.gross_development_value
    fill_in "Gross internal area", with: @project.gross_internal_area
    fill_in "Increase in landowner earnings", with: @project.increase_in_landowner_earnings
    fill_in "Net internal area", with: @project.net_internal_area
    fill_in "Postcode", with: @project.postcode
    fill_in "Potential homes", with: @project.potential_homes
    fill_in "Proposed ownership", with: @project.proposed_ownership
    fill_in "Reference number", with: @project.reference_number
    fill_in "Residual land value", with: @project.residual_land_value
    fill_in "Site area", with: @project.site_area
    fill_in "Storeys", with: @project.storeys
    fill_in "Total landowner earnings", with: @project.total_landowner_earnings
    fill_in "Work stage 2 to 3 programme mths", with: @project.work_stage_2_to_3_programme_mths
    fill_in "Work stage 2 to 3 roi", with: @project.work_stage_2_to_3_roi
    fill_in "Work stage 4 to 6 programme mths", with: @project.work_stage_4_to_6_programme_mths
    fill_in "Work stage 4 to 6 roi", with: @project.work_stage_4_to_6_roi
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
