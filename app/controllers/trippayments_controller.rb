class TrippaymentsController < ApplicationController
  before_action :set_trippayment, only: [:show, :edit, :update, :destroy]

  # GET /trippayments
  # GET /trippayments.json
  def index
    @trippayments = Trippayment.all
  end

  # GET /trippayments/1
  # GET /trippayments/1.json
  def show
  end

  # GET /trippayments/new
  def new
    @trippayment = Trippayment.new
  end

  # GET /trippayments/1/edit
  def edit
  end

  # POST /trippayments
  # POST /trippayments.json
  def create
    @trippayment = Trippayment.new(trippayment_params)

    respond_to do |format|
      if @trippayment.save
        format.html { redirect_to @trippayment, notice: 'Trippayment was successfully created.' }
        format.json { render :show, status: :created, location: @trippayment }
      else
        format.html { render :new }
        format.json { render json: @trippayment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trippayments/1
  # PATCH/PUT /trippayments/1.json
  def update
    respond_to do |format|
      if @trippayment.update(trippayment_params)
        format.html { redirect_to @trippayment, notice: 'Trippayment was successfully updated.' }
        format.json { render :show, status: :ok, location: @trippayment }
      else
        format.html { render :edit }
        format.json { render json: @trippayment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trippayments/1
  # DELETE /trippayments/1.json
  def destroy
    @trippayment.destroy
    respond_to do |format|
      format.html { redirect_to trippayments_url, notice: 'Trippayment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trippayment
      @trippayment = Trippayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trippayment_params
      params.require(:trippayment).permit(:payment_number, :status, :date, :cost, :service, :trip_id, :client_id)
    end
end
