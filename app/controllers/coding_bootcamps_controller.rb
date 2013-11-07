class CodingBootcampsController < ApplicationController
  before_action :set_coding_bootcamp, only: [:show, :edit, :update, :destroy]

  # GET /coding_bootcamps
  # GET /coding_bootcamps.json
  def index
    if params[:tag]
      @coding_bootcamps = CodingBootcamp.find_all_by_id(Program.tagged_with(params[:tag]).map(&:coding_bootcamp_id))
    else
      @coding_bootcamps =  CodingBootcamp.where(display: true)
    end
    
  end

  # GET /coding_bootcamps/1
  # GET /coding_bootcamps/1.json
  def show
    if request.path != coding_bootcamp_path(@coding_bootcamp)
      redirect_to @coding_bootcamp, status: :moved_permanently
    end

    @programs = @coding_bootcamp.programs
  end

  # GET /coding_bootcamps/new
  def new
    @coding_bootcamp = CodingBootcamp.new
  end

  # GET /coding_bootcamps/1/edit
  def edit
  end

  # POST /coding_bootcamps
  # POST /coding_bootcamps.json
  def create
    @coding_bootcamp = CodingBootcamp.new(coding_bootcamp_params)

    respond_to do |format|
      if @coding_bootcamp.save
        format.html { redirect_to @coding_bootcamp, notice: 'Coding bootcamp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @coding_bootcamp }
      else
        format.html { render action: 'new' }
        format.json { render json: @coding_bootcamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coding_bootcamps/1
  # PATCH/PUT /coding_bootcamps/1.json
  # def update
  #   respond_to do |format|
  #     if @coding_bootcamp.update(coding_bootcamp_params)
  #       format.html { redirect_to @coding_bootcamp, notice: 'Coding bootcamp was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @coding_bootcamp.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /coding_bootcamps/1
  # DELETE /coding_bootcamps/1.json
  # def destroy
  #   @coding_bootcamp.destroy
  #   respond_to do |format|
  #     format.html { redirect_to coding_bootcamps_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coding_bootcamp
      @coding_bootcamp = CodingBootcamp.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coding_bootcamp_params
      params.require(:coding_bootcamp).permit(:name)
    end
end
