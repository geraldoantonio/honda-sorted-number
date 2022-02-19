# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  def sorted_number
    unless params[:loteric_number] && params[:person_count]
      render json: { error: 'Invalid params' }, status: :bad_request and return
    end

    render json: { sorted_number: calculate_sorted_number }
  end

  private

  def calculate_sorted_number
    @calculate_sorted_number ||= CalculateSortedNumber.call(calculate_sorted_number_params)
  end

  def calculate_sorted_number_params
    params.permit(:loteric_number, :person_count)
  end
end
