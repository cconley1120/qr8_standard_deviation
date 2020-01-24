# frozen_string_literal: true

class CreateStandardDeviations < ActiveRecord::Migration[5.2]
  def change
    create_table :standard_deviations do |t|
      t.string :values
      t.string :result

      t.timestamps
    end
  end
end
