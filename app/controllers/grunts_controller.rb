class GruntsController < ApplicationController
  before_action :set_grunt, only: [:show, :edit, :update, :destroy]

  # GET /grunts
  # GET /grunts.json
  def index
    @grunts = Grunt.all.page(params[:page])
  end

  # GET /grunts/1
  # GET /grunts/1.json
  def show
  end

  # GET /grunts/new
  def new
    @grunt = Grunt.new
  end

  # GET /grunts/1/edit
  def edit
  end

  # POST /grunts
  # POST /grunts.json
  def create
    @grunt = Grunt.new(grunt_params)

    respond_to do |format|
      if @grunt.save
        format.html { redirect_to @grunt, notice: 'Grunt was successfully created.' }
        format.json { render :show, status: :created, location: @grunt }
      else
        format.html { render :new }
        format.json { render json: @grunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grunts/1
  # PATCH/PUT /grunts/1.json
  def update
    respond_to do |format|
      if @grunt.update(grunt_params)
        format.html { redirect_to @grunt, notice: 'Grunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @grunt }
      else
        format.html { render :edit }
        format.json { render json: @grunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grunts/1
  # DELETE /grunts/1.json
  def destroy
    @grunt.destroy
    respond_to do |format|
      format.html { redirect_to grunts_url, notice: 'Grunt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grunt
      @grunt = Grunt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grunt_params
      params.require(:grunt).permit(:message, :zombie_id)
    end
end
