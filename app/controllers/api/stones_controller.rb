class Api::StonesController < Api::BaseController
  before_action :doorkeeper_authorize! # equivalent of authenticate_user!

  def index
    @stones = Stone.all
    respond_with @stones
  end

  def new
    @stone = Stone.new
  end


  # POST /stones
  # POST /stones.json
  def create
    @stone = Stone.new(stone_params)

    
      if @stone.save
        respond_with @stone
      else
        render json: @stone.errors, status: :unprocessable_entity 
      end
    
    
  end


  # the rest of actions

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