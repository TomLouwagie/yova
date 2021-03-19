class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.references :user, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.boolean :is_read
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
