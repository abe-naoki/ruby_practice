class BattleController < ApplicationController
  def index
    @battle = Battle.all
    if @battle.empty?
      @battle = Battle.new(status: :attack)  
    end
  end

  def update
    @battle = Battle.new(battle_params)
    respond_to do |format|
      if @battle.update(status_params)
        format.html { redirect_to @battle, notice: 'User was successfully updated.' }
        format.json { render :show, status: :OK, location:@battle }
      else
        format.html { render :edit }
        format.json { render json: @battle.errors, status: :unprocessable_entity }
      end
      p '☆☆☆☆'
    end
  end

  private
    def battle_params
      params.require(:battle).permit(:status)
    end
end
