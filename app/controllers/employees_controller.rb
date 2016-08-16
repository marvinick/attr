class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render component: 'Empoyees', props: { employees: @employees }
  end
end 
