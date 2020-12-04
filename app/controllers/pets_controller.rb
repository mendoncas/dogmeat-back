class PetsController < ApplicationController
  def create
    Pet.new(name: params[:name]).save
  end

  def show
    render json: Pet.find(params[:id])
  end

  def getDeal
    @pet = Pet.find(params[:id])
    render json: @pet.deals
  end

  def index
    render json: Pet.all
  end

  def delete
    # if @pet = Pet.find(params[:id])
    #   Deal.destroy(Pet.deals)
    if Pet.destroy(params[:id])
      render json: { "msg": "deletado com sucesso" }
    end
    # end
  end
end
