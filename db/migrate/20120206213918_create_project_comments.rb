class CreateProjectComments < ActiveRecord::Migration
  def change
    create_table :project_comments do |t|
      t.string :content

      t.timestamps
    end
  end
end
