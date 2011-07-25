class SubmissionVotesController < ApplicationController
  respond_to :html

  def create
    competition_id = params[:competition_id]
    submission_id = params[:submission_id]

    @submission = Submission.find(submission_id)

    if SubmissionVote.create( :user_id => current_user.id, :competition_id => competition_id, :submission_id => submission_id )
      @submission.votes = (@submission.votes || 0) + 1
      @submission.save
    end

    render '/competitions/show', :id => competition_id
  end
end
