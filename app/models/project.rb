class Project < ActiveRecord::Base
  belongs_to :user
  has_many :project_files
  has_many :edits
  has_many :project_comments
  has_many :project_downloads
end
