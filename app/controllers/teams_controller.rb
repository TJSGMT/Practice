class TeamsController < ApplicationController
before_action :find_team, only:[:edit, :show, :update, :delete]
 
  def index
    @team =Employee.all
  end

  def create
    @team =Employee.create(employee_params)
    if @team.save
      redirect_to employees_path
    end
  else
    redirect_to new_bank_path
  end

  def new
    @team = Employee.new()
  end

  def edit
  end

  def show
  end

  def update
    @team.update(employee_params)
    redirect_to employees_path
  end

  def delete
    redirect_to employees_path  
  end

  Private
  def employee_params
    @team.params.require(:bank).permit(:name)
  end

  def find_team
    @team = Employee.find(parmas[:id])
  end
end
