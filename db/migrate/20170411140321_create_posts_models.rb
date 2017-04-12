class CreatePostsModels < ActiveRecord::Migration[5.0]
  def change
    create_table :posts_models do |t|
      t.string :title
      t.text :content
      t.integer :password

      t.timestamps
    end
  end
end
