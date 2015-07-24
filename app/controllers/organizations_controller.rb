class OrganizationsController < ApplicationController

  protect_from_forgery except: :webhook

  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      flash[:notice] = "Organization added!"
      redirect_to root_path
    else
      flash[:notice] = "Error trying to create organization"
      render :new
    end
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])
    if @organization.update(organization_params)
      flash[:notice] = "Organization updated!"
      redirect_to organization_path(@organization)
    else
      flash[:notice] = "Error trying to update organization."
      render :edit
    end
  end

  def destroy
    @organization = Organization.find params[:id]
    if @organization.delete
      flash[:notice] = "Organization deleted, why did you do that?!"
      redirect_to root_path
    else
      flash[:notice] = "Error trying to delete organization."
      render :show
    end
  end

  private

  def organization_params
    params.require(:organization).permit(:name)
  end
end
