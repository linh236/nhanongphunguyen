class CreateLikeds < ActiveRecord::Migration[5.2]
  def change
    create_table :likeds do |t|
      t.references :user_post, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
