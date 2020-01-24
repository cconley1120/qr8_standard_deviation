# frozen_string_literal: true

require 'application_system_test_case'

class StandardDeviationsTest < ApplicationSystemTestCase
  setup do
    @standard_deviation = standard_deviations(:one)
  end

  test 'visiting the index' do
    visit standard_deviations_url
    assert_selector 'h1', text: 'Standard Deviations'
  end

  test 'creating a Standard deviation' do
    visit standard_deviations_url
    click_on 'New Standard Deviation'

    fill_in 'Result', with: @standard_deviation.result
    fill_in 'Values', with: @standard_deviation.values
    click_on 'Create Standard deviation'

    assert_text 'Standard deviation was successfully created'
    click_on 'Back'
  end

  test 'updating a Standard deviation' do
    visit standard_deviations_url
    click_on 'Edit', match: :first

    fill_in 'Result', with: @standard_deviation.result
    fill_in 'Values', with: @standard_deviation.values
    click_on 'Update Standard deviation'

    assert_text 'Standard deviation was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Standard deviation' do
    visit standard_deviations_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Standard deviation was successfully destroyed'
  end
end
