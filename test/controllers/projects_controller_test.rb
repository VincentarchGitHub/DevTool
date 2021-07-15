require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { average_unit_value: @project.average_unit_value, basement: @project.basement, city: @project.city, cost_of_development: @project.cost_of_development, cost_of_work_stages_2_to_3: @project.cost_of_work_stages_2_to_3, cost_of_work_stages_4_to_6: @project.cost_of_work_stages_4_to_6, development_type: @project.development_type, existing_land_ownership: @project.existing_land_ownership, gross_development_value: @project.gross_development_value, gross_internal_area: @project.gross_internal_area, increase_in_landowner_earnings: @project.increase_in_landowner_earnings, net_internal_area: @project.net_internal_area, postcode: @project.postcode, potential_homes: @project.potential_homes, proposed_ownership: @project.proposed_ownership, reference_number: @project.reference_number, residual_land_value: @project.residual_land_value, site_area: @project.site_area, storeys: @project.storeys, total_landowner_earnings: @project.total_landowner_earnings, work_stage_2_to_3_programme_mths: @project.work_stage_2_to_3_programme_mths, work_stage_2_to_3_roi: @project.work_stage_2_to_3_roi, work_stage_4_to_6_programme_mths: @project.work_stage_4_to_6_programme_mths, work_stage_4_to_6_roi: @project.work_stage_4_to_6_roi } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { average_unit_value: @project.average_unit_value, basement: @project.basement, city: @project.city, cost_of_development: @project.cost_of_development, cost_of_work_stages_2_to_3: @project.cost_of_work_stages_2_to_3, cost_of_work_stages_4_to_6: @project.cost_of_work_stages_4_to_6, development_type: @project.development_type, existing_land_ownership: @project.existing_land_ownership, gross_development_value: @project.gross_development_value, gross_internal_area: @project.gross_internal_area, increase_in_landowner_earnings: @project.increase_in_landowner_earnings, net_internal_area: @project.net_internal_area, postcode: @project.postcode, potential_homes: @project.potential_homes, proposed_ownership: @project.proposed_ownership, reference_number: @project.reference_number, residual_land_value: @project.residual_land_value, site_area: @project.site_area, storeys: @project.storeys, total_landowner_earnings: @project.total_landowner_earnings, work_stage_2_to_3_programme_mths: @project.work_stage_2_to_3_programme_mths, work_stage_2_to_3_roi: @project.work_stage_2_to_3_roi, work_stage_4_to_6_programme_mths: @project.work_stage_4_to_6_programme_mths, work_stage_4_to_6_roi: @project.work_stage_4_to_6_roi } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
