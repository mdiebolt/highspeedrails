class CompetitionsController < ApplicationController
  respond_to :html

  def index
    @competitions = Competition.all

    respond_with = @competitions
  end

  def new
    @competition = Competition.new
  end

  def create
    @competition = Competition.new(params[:competition])
    if @competition.save
      respond_with @competition, :notice => "Competition scheduled."
    else
      render :action => 'new'
    end
  end

  def edit
    @competition = Competition.find(params[:id])

    respond_with @competition
  end

  def show
    @competition = Competition.find(params[:id])

    respond_with @competition
  end
end
