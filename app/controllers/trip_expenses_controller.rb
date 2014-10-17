class TripExpensesController < ApplicationController
  def index
    @trip = Trip.find(params[:id])
    @expenses = @trip.expenses
  end
end
