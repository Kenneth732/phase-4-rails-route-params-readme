class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end
  def show
    # find a cheese using the ID from URL
    cheese = Cheese.find_by(params[:id])
    # send a JSON reponse using that cheesse object
    render json: cheese 
    # byebug
  end

end