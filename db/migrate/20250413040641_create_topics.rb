class CreateTopics < ActiveRecord::Migration[8.0]
  def change
    create_table :topics do |t|
      t.string :title
      t.string :content
      t.boolean :disable_comments

      t.timestamps
    end
  end
end
