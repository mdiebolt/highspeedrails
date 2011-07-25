class SubmissionVotesController < ApplicationController
  respond_to :html

  def create
    competition_id = params[:competition_id]
    submission_id = params[:submission_id]

    SubmissionVote.create( :user_id => current_user.id, :competition_id => competition_id, :submission_id => submission_id )

    render :nothing => true
  end
end
