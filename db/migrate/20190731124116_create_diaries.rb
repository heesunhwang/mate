class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
