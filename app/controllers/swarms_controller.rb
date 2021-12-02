class SwarmsController < ApplicationController
    before_action :set_swarm, only: %i[ show edit update destroy ]
    before_action :is_authorized, only: [:create, :update]
  
    # GET
    def index
      @swarms = Swarm.all
      render :json => @swarms
    end
  
    # GET
    def show
    end
  
    # GET
    def new
      @swarm = Swarm.new
    end
  
    # GET
    def edit
    end
  
    # POST
    def create
      @swarm = Swarm.new(swarm_params)
      if @swarm.save
        render json: {
          status: :created,
          swarm: @swarm
        } else
          render json: {
            status: 500,
            errors: @swarm.errors.full_messages
          }
        end
    end
  
    # PATCH/PUT
    def update
      respond_to do |format|
        if @swarm.update(swarm_params)
          format.html { redirect_to @swarm, notice: "Swarm was successfully updated." }
          format.json { render :show, status: :ok, location: @swarm }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @swarm.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE
    def destroy
      @swarm.destroy
      respond_to do |format|
        format.html { redirect_to swarm_url, notice: "Swarm was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_swarm
        @swarm = Swarm.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def swarm_params
        params.require(:swarm).permit(:swarm_id, :collector_id,  :lat, :long, :address, :reporter_id, :collected, :description, :created_at, :updated_at)
      end
  end