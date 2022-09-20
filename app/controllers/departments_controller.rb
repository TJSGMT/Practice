class DepartmentsController < ApplicationController
before_action :find_department, only:[:edit, :show, :update, :delete]
  def index
    @department =Department.all
  end

  def create
    @department =Department.create(department_params)
    if @department.save
      redirect_to employees_path
    end
  else
    redirect_to new_bank_path
  end

  def new
    @department = Department.new()
  end

  def edit
  end

  def show
  end

  def update
    @department.update(department_params)
    redirect_to employees_path
  end

  def delete
    redirect_to employees_path  
  end

  Private
  def department_params
    @department.params.require(:bank).permit(:name)
  end

  def find_department
    @department = Department.find(parmas[:id])
  end
end
