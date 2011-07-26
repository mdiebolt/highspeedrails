class Competition < ActiveRecord::Base
  has_many :submissions
  has_many :competition_theme_votes

  before_save :generate_end_date

  validates_presence_of :start_date

  def display_name
    self.theme ? self.theme : "Competition #{self.id}"
  end

  def formatted_time
    self.start_date.strftime("%A, %B %d %Y at %I:%M%p")
  end

  private
  def generate_end_date
    self.end_date = self.start_date + 2.days if self.end_date.nil?
  end
end
