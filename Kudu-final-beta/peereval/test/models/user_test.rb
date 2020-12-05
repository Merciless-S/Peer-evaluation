# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  name            :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  is_admin        :boolean
#  team_id         :integer
#
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
