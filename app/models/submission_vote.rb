class SubmissionVote < ActiveRecord::Base
  belongs_to :submission
  belongs_to :user
end
