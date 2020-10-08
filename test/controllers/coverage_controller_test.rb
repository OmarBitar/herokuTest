require 'test_helper'

class CoverageControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coverage = coverage(:one)
  end

  test "should get index" do
    get coverage_index_url
    assert_response :success
  end

  test "should get new" do
    get new_coverage_url
    assert_response :success
  end

  test "should create coverage" do
    assert_difference('Coverage.count') do
      post coverage_index_url, params: { coverage: {  } }
    end

    assert_redirected_to coverage_url(Coverage.last)
  end

  test "should show coverage" do
    get coverage_url(@coverage)
    assert_response :success
  end

  test "should get edit" do
    get edit_coverage_url(@coverage)
    assert_response :success
  end

  test "should update coverage" do
    patch coverage_url(@coverage), params: { coverage: {  } }
    assert_redirected_to coverage_url(@coverage)
  end

  test "should destroy coverage" do
    assert_difference('Coverage.count', -1) do
      delete coverage_url(@coverage)
    end

    assert_redirected_to coverage_index_url
  end
end
