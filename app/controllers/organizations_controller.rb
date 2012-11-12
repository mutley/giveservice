class OrganizationsController < ApplicationController
  set_tab :organizations
  def index
    @organizations = Organization.all
  end

  def new
    @organization = Organization.new
  end 

  def create
  end

  def edit
  end

  def update
  end

end
