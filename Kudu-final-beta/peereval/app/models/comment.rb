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
class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :project
  validates :score, :content, :to_user, :from_user, :team_id, presence: true
end
