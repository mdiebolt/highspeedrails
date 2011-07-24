require 'test_helper'

class CompetitionTest < ActiveSupport::TestCase
  should_have_many :submissions
  should_validate_presence_of :start_date

  def setup
    @competition = Factory :competition
  end

  should "generate end_date" do
    @competition.start_date = DateTime.new(2011, 5, 5)
    @competition.save!
    assert_equal @competition.end_date, @competition.start_date + 2.days
  end

  should "have correct display_name" do
    assert_equal @competition.display_name, "Competition #{@competition.id}"

    @competition.theme = "test"
    assert_equal @competition.display_name, "test"
  end
end
