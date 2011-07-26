class CompetitionThemeVotesController < ApplicationController
  respond_to :html

  before_filter :login_required

  def new
    @competition_theme_vote = CompetitionThemeVote.new
    @competition_theme_vote.competition_id = params[:competition_id]
  end

  def create
    vote = params[:competition_theme_vote]

    competition_theme_vote = CompetitionThemeVote.new(vote)
    competition_theme_vote.user_id = current_user.id

    competition_theme_vote.save

    competition_id = competition_theme_vote.competition.id

    @competition = Competition.find(competition_id)

    render '/competitions/show', :id => competition_id
  end
end
