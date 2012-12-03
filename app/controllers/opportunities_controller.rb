class OpportunitiesController < ApplicationController
  set_tab :opportunities

  def index
    @opportunities = Opportunity.all
  end

  def show

  end

  def new
    @opportunity = Opportunity.new

  end

  def create
    @opportunity = Opportunity.new(params[:opportunity])
    if @opportunity.save
      redirect_to opportunities_path
    else
      render :new
    end

  end

  def edit

  end

  def update

  end
end
