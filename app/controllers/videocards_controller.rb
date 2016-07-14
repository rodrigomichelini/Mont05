class VideocardsController < ApplicationController
  before_action :set_videocard, only: [:show, :edit, :update, :destroy]

  # GET /videocards
  # GET /videocards.json
  def index
    @videocards = Videocard.all
  end

  # GET /videocards/1
  # GET /videocards/1.json
  def show
  end

  # GET /videocards/new
  def new
    @videocard = Videocard.new
  end

  # GET /videocards/1/edit
  def edit
  end

  # POST /videocards
  # POST /videocards.json
  def create
    @videocard = Videocard.new(videocard_params)

    respond_to do |format|
      if @videocard.save
        format.html { redirect_to @videocard, notice: 'Videocard was successfully created.' }
        format.json { render :show, status: :created, location: @videocard }
      else
        format.html { render :new }
        format.json { render json: @videocard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videocards/1
  # PATCH/PUT /videocards/1.json
  def update
    respond_to do |format|
      if @videocard.update(videocard_params)
        format.html { redirect_to @videocard, notice: 'Videocard was successfully updated.' }
        format.json { render :show, status: :ok, location: @videocard }
      else
        format.html { render :edit }
        format.json { render json: @videocard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videocards/1
  # DELETE /videocards/1.json
  def destroy
    @videocard.destroy
    respond_to do |format|
      format.html { redirect_to videocards_url, notice: 'Videocard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videocard
      @videocard = Videocard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def videocard_params
      params.require(:videocard).permit(:memory, :memorytype, :memoryinterfacewidth, :memorybaseclock, :memoryboostclock, :memorybandwidth, :computingpower, :interface, :chipset, :sli, :slitype, :crossfire, :crossfiretype, :dviport, :hdmiport, :minihdmiport, :displayport, :minidisplayport, :expansionslotw, :tdp, :maxtemp, :powerconnectors, :framesync, :ventoinha, :maximumresolution, :multimonitor, :comprimento, :largura, :altura, :color)
    end
end
