# frozen_string_literal: true

class StatisticsService
  def self.standard_deviation(array)
    return 0 if array.empty?

    mean = array.inject(0) { |sum, x| sum += x } / array.size.to_f
    variance = array.inject(0) { |variance, x| variance += (x - mean)**2 }
    standard_deviation = Math.sqrt(variance / array.size)

    standard_deviation.round(4)
  end
end
