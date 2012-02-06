class CreateProjectFiles < ActiveRecord::Migration
  def change
    create_table :project_files do |t|
      t.string :name
      t.string :path
      t.int :size
      t.string :format

      t.timestamps
    end
  end
end
