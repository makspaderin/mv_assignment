class CompaniesController < ApplicationController

  def index
   	@companies = Company.all
  end

  def new
   @company = Company.new
  end

  def create
   @company = Company.new(company_params)
   if @company.save
   	redirect_to '/companies'
   else
    render 'new'
   end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update_attributes(company_params)
    flash[:success] = "Company data edited!"
    redirect_to '/companies'
    else
    render 'edit'
    end
  end

  def show
  end

  private
  def company_params
   params.require(:company).permit(:name, :address, :city, :country, :email, :phone_number)
 end

end
