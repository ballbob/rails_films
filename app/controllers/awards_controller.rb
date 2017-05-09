class AwardsController < ApplicationController

  def index 
    awards = Award.where({film: params[:film_id] })
    render json: awards
  end

end