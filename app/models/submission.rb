class Submission < ActiveRecord::Base
  belongs_to :competition
  has_many :submission_votes

  validates_presence_of :name, :url, :competition
end
