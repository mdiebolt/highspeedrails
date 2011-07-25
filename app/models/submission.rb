class Submission < ActiveRecord::Base
  belongs_to :competition

  validates_presence_of :name, :url, :competition
end
