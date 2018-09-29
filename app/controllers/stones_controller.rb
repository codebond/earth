class StonesController < ApplicationController
  before_action :set_stone, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /stones
  # GET /stones.json
  def index
    @stones = Stone.all
  end

  # GET /stones/1
  # GET /stones/1.json
  def show
  end

  # GET /stones/new
  def new
    @stone = Stone.new
  end

  # GET /stones/1/edit
  def edit
  end

  # POST /stones
  # POST /stones.json
  def create
    @stone = Stone.new(stone_params)

    respond_to do |format|
      if @stone.save
        format.html { redirect_to @stone, notice: 'Stone was successfully created.' }
        format.json { render :show, status: :created, location: @stone }
      else
        format.html { render :new }
        format.json { render json: @stone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stones/1
  # PATCH/PUT /stones/1.json
  def update
    respond_to do |format|
      if @stone.update(stone_params)
        format.html { redirect_to @stone, notice: 'Stone was successfully updated.' }
        format.json { render :show, status: :ok, location: @stone }
      else
        format.html { render :edit }
        format.json { render json: @stone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stones/1
  # DELETE /stones/1.json
  def destroy
    @stone.destroy
    respond_to do |format|
      format.html { redirect_to stones_url, notice: 'Stone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stone
      @stone = Stone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stone_params
      params.require(:stone).permit(:info)
    end
end
