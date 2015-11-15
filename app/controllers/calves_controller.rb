class CalvesController < ApplicationController
  before_action :set_calf, only: [:show, :edit, :update, :destroy]

  # GET /calves
  # GET /calves.json
  def index
    @calves = Calf.all
  end

  # GET /calves/1
  # GET /calves/1.json
  def show
  end

  # GET /calves/new
  def new
    @calf = Calf.new
  end

  # GET /calves/1/edit
  def edit
  end

  # POST /calves
  # POST /calves.json
  def create
    @calf = Calf.new(calf_params)

    respond_to do |format|
      if @calf.save
        format.html { redirect_to @calf, notice: 'Calf was successfully created.' }
        format.json { render :show, status: :created, location: @calf }
      else
        format.html { render :new }
        format.json { render json: @calf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calves/1
  # PATCH/PUT /calves/1.json
  def update
    respond_to do |format|
      if @calf.update(calf_params)
        format.html { redirect_to @calf, notice: 'Calf was successfully updated.' }
        format.json { render :show, status: :ok, location: @calf }
      else
        format.html { render :edit }
        format.json { render json: @calf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calves/1
  # DELETE /calves/1.json
  def destroy
    @calf.destroy
    respond_to do |format|
      format.html { redirect_to calves_url, notice: 'Calf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calf
      @calf = Calf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calf_params
      params.require(:calf).permit(:name, :cow_id)
    end
end
