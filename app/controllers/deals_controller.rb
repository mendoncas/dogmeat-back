class DealsController < ApplicationController
  def create
    @teste = Deal.new(pet_id: params[:pet_id], value: params[:value], date: params[:date], amount: params[:amount])
    if @teste.save
      render json: @teste
    else
      render json: @teste.errors
    end
  end

  def show
    render json: Deal.where(pet_id: params[:id])
  end

  def index
    render json: Deal.all()
  end
end
