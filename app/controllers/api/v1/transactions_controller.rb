class Api::V1::TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show]
  skip_before_action :verify_authenticity_token


  def index
    @transactions = Transaction.all
    render json: @transactions
  end

 
  def show
    render json: @transaction
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
    render json: @transaction, status: :created, location: api_v1_transaction_url(@transaction)
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end


  private
    def set_transaction
      @transaction = Transaction.where(user_token: params[:id])
    end

    def transaction_params
      params.permit(:coin_name, :user_token)
    end
end
