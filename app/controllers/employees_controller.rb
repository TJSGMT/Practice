class EmployeesController < ApplicationController
before_action :find_employee, only:[:edit, :show, :update, :destroy]
 
  def index
    @employee =Employee.all
  end

  def create
    # binding.pry
    @employee =Employee.create(employee_params)
    if @employee.save
      redirect_to employees_path
    else
      flash[:errors] = @employee.errors.full_messages
      redirect_to new_employee_path
    end  
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

  def destroy
    @employee.destroy
    redirect_to employees_path  
  end
  
  def employee_params
    params.require(:employee).permit(:name, :contact, :Bank_account_id, :team_name,:bank_id, :department_id, :team_id )
  end

  def find_employee
    @employee = Employee.find(params[:id])
  end
end
