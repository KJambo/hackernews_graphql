class CreatePostings < ActiveRecord::Migration[5.0]
  def change
    create_table :postings do |t|
      t.string    :title
      t.string    :url
      t.integer   :user_id
      t.timestamps
    end

    add_foreign_key :postings, :users
  end
end
