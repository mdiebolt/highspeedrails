require 'test_helper'

class SubmissionTest < ActiveSupport::TestCase
  should_belong_to :competition
  should_validate_presence_of :name, :url, :competition
end
