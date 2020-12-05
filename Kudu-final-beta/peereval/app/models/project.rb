# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :integer
#
class Project < ApplicationRecord
  has_many :comments
  belongs_to :team
  has_and_belongs_to_many :users
end
