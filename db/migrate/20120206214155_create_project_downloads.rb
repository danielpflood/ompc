class CreateProjectDownloads < ActiveRecord::Migration
  def change
    create_table :project_downloads do |t|

      t.timestamps
    end
  end
end
