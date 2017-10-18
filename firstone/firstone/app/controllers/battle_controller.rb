class BattleController < ApplicationController
  def index
    @status = Battle.all
  end

  def update
    respond_to do |format|
      if @status.update(status_params)
        format.html { redirect_to @status, notice: 'User was successfully updated.' }
        format.json { render :show, status: :OK, location:@status }
      else
        format.html { render :edit }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def status_params
      params.require(:status).permit(:status)
    end
end
