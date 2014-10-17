class TripExpensesController < ApplicationController
  before_action :require_login
  def index
    @trip = Trip.find(params[:id])
    @expenses = @trip.expenses
  end
end
