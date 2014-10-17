class ExpenseBuddiesController < ApplicationController
  before_action :set_expense_buddy, only: [:show, :edit, :update, :destroy]

  # GET /expense_buddies
  # GET /expense_buddies.json
  def index
    @expense_buddies = ExpenseBuddy.all
  end

  # GET /expense_buddies/1
  # GET /expense_buddies/1.json
  def show
  end

  # GET /expense_buddies/new
  def new
    @expense_buddy = ExpenseBuddy.new
  end

  # GET /expense_buddies/1/edit
  def edit
  end

  # POST /expense_buddies
  # POST /expense_buddies.json
  def create
    @expense_buddy = ExpenseBuddy.new(expense_buddy_params)

    respond_to do |format|
      if @expense_buddy.save
        format.html { redirect_to @expense_buddy, notice: 'Expense buddy was successfully created.' }
        format.json { render :show, status: :created, location: @expense_buddy }
      else
        format.html { render :new }
        format.json { render json: @expense_buddy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expense_buddies/1
  # PATCH/PUT /expense_buddies/1.json
  def update
    respond_to do |format|
      if @expense_buddy.update(expense_buddy_params)
        format.html { redirect_to @expense_buddy, notice: 'Expense buddy was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense_buddy }
      else
        format.html { render :edit }
        format.json { render json: @expense_buddy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_buddies/1
  # DELETE /expense_buddies/1.json
  def destroy
    @expense_buddy.destroy
    respond_to do |format|
      format.html { redirect_to expense_buddies_url, notice: 'Expense buddy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_buddy
      @expense_buddy = ExpenseBuddy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_buddy_params
      params.require(:expense_buddy).permit(:buddy_id, :expense_id)
    end
end
