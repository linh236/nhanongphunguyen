class CreateLikeComments < ActiveRecord::Migration[5.2]
  def change
    create_table :like_comments do |t|
      t.references :comment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
