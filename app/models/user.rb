class User < ActiveRecord::Base
  has_many :projects
  has_many :project_comments
  has_many :edits
  has_many :user_comments
  has_many :messages
end
