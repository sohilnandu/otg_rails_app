class EventRegistrantsController < ApplicationController
  before_action :set_event_registrant, only: [:show, :edit, :update, :destroy]

  # GET /event_registrants
  # GET /event_registrants.json
  def index
    @event_registrants = EventRegistrant.all
  end

  # GET /event_registrants/1
  # GET /event_registrants/1.json
  def show
  end

  # GET /event_registrants/new
  def new
    @event_registrant = EventRegistrant.new
  end

  # GET /event_registrants/1/edit
  def edit
  end

  # POST /event_registrants
  # POST /event_registrants.json
  def create
    @event_registrant = EventRegistrant.new(event_registrant_params)

    respond_to do |format|
      if @event_registrant.save
        format.html { redirect_to @event_registrant, notice: 'Event registrant was successfully created.' }
        format.json { render :show, status: :created, location: @event_registrant }
      else
        format.html { render :new }
        format.json { render json: @event_registrant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_registrants/1
  # PATCH/PUT /event_registrants/1.json
  def update
    respond_to do |format|
      if @event_registrant.update(event_registrant_params)
        format.html { redirect_to @event_registrant, notice: 'Event registrant was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_registrant }
      else
        format.html { render :edit }
        format.json { render json: @event_registrant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_registrants/1
  # DELETE /event_registrants/1.json
  def destroy
    @event_registrant.destroy
    respond_to do |format|
      format.html { redirect_to event_registrants_url, notice: 'Event registrant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def check_in_registrant
    puts @id
    er = EventRegistrant.find(params[:id])

    er.checked_in = 1
    er.save()

    flash[:notice] = "You have checked in!"
    redirect_to :controller => :event_registrants 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_registrant
      @event_registrant = EventRegistrant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_registrant_params
      params.require(:event_registrant).permit(:ImportID, :FirstName, :LastName, :Addr1, :Addr2, :City, :State, :DonorCategory, :NextAskAmount, :TotalIdentifiedAssets, :CurrentMajor1kDonor, :MajorDonorWith1MMinAssets, :MajorUnderPerformer, :MajorUnderPerformingByAmount, :AnnualDonorWith1MMinAssets, :AnnualUnderPerformer, :AnnualUnderPerformingByAmount)
    end
end
