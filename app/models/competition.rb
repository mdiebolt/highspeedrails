class Competition < ActiveRecord::Base
  before_save :prepare_password

end
