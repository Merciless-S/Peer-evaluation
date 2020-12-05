# == Schema Information
#
# Table name: team_users
#
#  id         :integer          not null, primary key
#  team_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class TeamUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
