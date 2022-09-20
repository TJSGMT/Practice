class EmployeesController < ApplicationController
before_action :find_employee, only:[:edit, :show, :update, :delete]
 
  def index
    @employee =Employee.all
  end

  def create
    @employee =Employee.create(employee_params)
    if @employee.save
      redirect_to employees_path
    end
  else
    redirect_to new_bank_path
  end

  def new
    @employee = Employee.new()
  end

  def edit
  end

  def show
  end

  def update
    @employee.update(employee_params)
    redirect_to employees_path
  end

  def delete
    redirect_to employees_path  
  end

  Private
  def employee_params
    @employee.params.require(:bank).permit(:name)
  end

  def find_employee
    @employee = Employee.find(parmas[:id])
  end
end
