class Project < ApplicationRecord
  has_many :comments
  has_many :teams
  has_and_belongs_to_many :users
end
