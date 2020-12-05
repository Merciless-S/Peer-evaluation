# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  to_user    :integer
#  from_user  :integer
#  content    :text
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :integer
#  project_id :integer
#  user_id    :integer
#
require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
