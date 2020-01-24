# frozen_string_literal: true

require 'test_helper'

class StandardDeviationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @standard_deviation = standard_deviations(:one)
  end

  test 'should get index' do
    get standard_deviations_url
    assert_response :success
  end

  test 'should create standard_deviation' do
    assert_difference('StandardDeviation.count') do
      post standard_deviations_url, params: { standard_deviation: { result: @standard_deviation.result, values: @standard_deviation.values } }
    end

    assert_redirected_to standard_deviation_url(StandardDeviation.last)
  end

  test 'should show standard_deviation' do
    get standard_deviation_url(@standard_deviation)
    assert_response :success
  end
end
