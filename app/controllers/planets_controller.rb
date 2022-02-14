# A super simple controller
class PlanetsController < ApplicationController
  def index
    search = params[:search].downcase
    @planets = Planet.where('name LIKE ?', "%#{search}%").limit(500)
    render json: { results: @planets }
  end
end
