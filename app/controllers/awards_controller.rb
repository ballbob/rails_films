class AwardsController < ApplicationController

  def index 
    awards = Award.where({film: params[:film_id] })
    render json: awards.as_json({
      only: [:name],
      include: {
        film: {
          only: [:title],
          include: {
            genre: {
              only: [:name]
            }
          }
        },
        talent: {
          only: [:name, :job]
          }
        }
      })
  end

  def create
    award = Award.create({
      name: params[:name],
      film_id: params[:film_id],
      talent_id: params[:talent_id]})
    render json: award
  end

  def destroy
    award = Award.find(params[:id])
    if award.destroy!
      render json: {status: :success}
    else
      render json: {status: :delete_failed}
    end
  end

end