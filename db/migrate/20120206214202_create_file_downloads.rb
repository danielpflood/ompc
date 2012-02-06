class CreateFileDownloads < ActiveRecord::Migration
  def change
    create_table :file_downloads do |t|

      t.timestamps
    end
  end
end
