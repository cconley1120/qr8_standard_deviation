# frozen_string_literal: true

json.extract! standard_deviation, :id, :values, :result, :created_at, :updated_at
json.url standard_deviation_url(standard_deviation, format: :json)
