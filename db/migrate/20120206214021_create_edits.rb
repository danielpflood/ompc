class CreateEdits < ActiveRecord::Migration
  def change
    create_table :edits do |t|
      t.string :description

      t.timestamps
    end
  end
end
