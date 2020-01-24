# frozen_string_literal: true

class StandardDeviationsController < ApplicationController
  before_action :set_standard_deviation, only: %i[show edit update destroy]

  # GET /standard_deviations
  def index
    @standard_deviations = StandardDeviation.all
  end

  # GET /standard_deviations/1
  def show; end

  # POST /standard_deviations
  def create
    @standard_deviation = StandardDeviation.new(values: standard_deviation_params[:values])
    @standard_deviation.result = StatisticsService.standard_deviation(standard_deviation_params[:values])

    respond_to do |format|
      if @standard_deviation.save
        format.json { render :show, status: :created }
      else
        format.json { render json: @standard_deviation.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_standard_deviation
    @standard_deviation = StandardDeviation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def standard_deviation_params
    params.require(:standard_deviation).permit(values: [])
  end
end
