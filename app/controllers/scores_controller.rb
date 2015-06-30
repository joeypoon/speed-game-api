class ScoresController < ApplicationController

  def index
    set_scores
  end

  def create
    @score = LeaderBoard.new score_params
    if @score.save
      set_scores
      render :index
    else
      render json: { error: 'Fail' }, status: 422
    end
  end

  private

    def set_scores
      @scores = LeaderBoard.all.order('score desc limit 10')
    end

    def score_params
      params.require(:score).permit(:name, :score)
    end

end
