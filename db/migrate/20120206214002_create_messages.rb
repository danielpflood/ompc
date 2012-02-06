class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.boolean :isRead

      t.timestamps
    end
  end
end
