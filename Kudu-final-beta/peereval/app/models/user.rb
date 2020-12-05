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
class User < ApplicationRecord
  has_many :projects
  has_many :team_users
  has_many :teams, through: :team_users
  include BCrypt
  has_secure_password
  attr_accessor :password, :password_confirmation
  validates :email, uniqueness: true

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

  def is_admin?
    self.is_admin
  end


end
