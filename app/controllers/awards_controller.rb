class AwardsController < ApplicationController

  def index 
    awards = Award.where({film: params[:film_id] })
    render json: awards.as_json({
      only: [:name],
      include: {
        film: {
          only: [:title, :genre]
        },
        talent: {
          only: [:name, :job]
          }
        }
      })
  end

end