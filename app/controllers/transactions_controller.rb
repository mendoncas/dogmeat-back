class TransactionsController < ApplicationController
  def create
    Transaction.new(pet: params[:pet], value: params[:value], amount: params[:amount], date: params[:date]).save
  end

  def show
    render json: Transaction.find(params[:id])
  end

  def index
    render json: Transaction.all()
  end
end
