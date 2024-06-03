class AirportsController < ApplicationController
  def show
    @airports = Airport.all
  end

  def sort
    field = show_params['field']
    letter = show_params['letter']
    if field.present? && letter.present?
      @airports = Airport.match_by_letter(field, letter)
    else
      @airports = Airport.all
    end
    render :show
  end

  private

  def show_params
    params.permit(:field, :letter)
  end
end
