class BanksController < ApplicationController
before_action :find_bank, only:[:edit, :show, :update, :delete]
 
  def index
    @bank =Bank.all
  end

  def create
    @bank =Bank.create(bank_params)
    if @bank.save
      redirect_to employees_path
    end
  else
    redirect_to new_bank_path
  end

  def new
    @bank = Bank.new()
  end

  def edit
  end

  def show
  end

  def update
    @bank.update(bank_params)
    redirect_to employees_path
  end

  def delete
    redirect_to employees_path  
  end

  Private
  def bank_params
    @bank.params.require(:bank).permit(:name)
  end

  def find_bank
    @bank = Bank.find(parmas[:id])
  end
end
