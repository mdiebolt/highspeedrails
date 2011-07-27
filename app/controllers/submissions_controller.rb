class SubmissionsController < ApplicationController
  respond_to :html

  def new
    @competition = Competition.find(params[:competition_id])
    @submission = Submission.new(:competition_id => params[:competition_id])

    respond_with [@competition, @submission]
  end

  def create
    @competition = Competition.find(params[:competition_id])
    @submission = Submission.new(params[:submission])
    @submission.user = current_user

    if @submission.save
      render '/competitions/show', :id => @competition.id, :notice => "Submission was successful."
    else
      render :action => 'new'
    end
  end
end
