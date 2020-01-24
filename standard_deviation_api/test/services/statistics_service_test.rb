# frozen_string_literal: true

require 'test_helper'

class StatisticsServiceTest < ActiveSupport::TestCase
  test 'should calculate standard deviation' do
    result = StatisticsService.standard_deviation([1.11, 2.22, 3.33])
    expected_result = 0.9063
    assert_equal(expected_result, result)
  end

  test 'should calculate standard deviation to zero when all values are zero' do
    result = StatisticsService.standard_deviation([0, 0, 0])
    expected_result = 0
    assert_equal(expected_result, result)
  end

  test 'should calculate standard deviation to zero when empty array' do
    result = StatisticsService.standard_deviation([])
    expected_result = 0
    assert_equal(expected_result, result)
  end
end
