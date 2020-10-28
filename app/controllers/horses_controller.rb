class HorsesController < ApplicationController
  # GET /horses/:id
  def show
    @horse = Horse.find(params[:id])
  end

  # GET /horses/search?keywords=user+search+terms
  def search
    @horses = Horse.where("name LIKE ?", "%#{params[:search_term]}%")
  end
end
