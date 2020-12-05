# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  team_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  project_id :integer
#
class Team < ApplicationRecord
  has_many :projects
  has_many :team_users
  has_many :users, through: :team_users
  accepts_nested_attributes_for :team_users, allow_destroy: true
end
