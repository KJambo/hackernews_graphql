class CreateUpvotes < ActiveRecord::Migration[5.0]
  def change
    create_table :upvotes do |t|
      t.integer   :user_id
      t.integer   :posting_id
      t.timestamps
    end

    add_foreign_key :upvotes, :users
    add_foreign_key :upvotes, :postings
  end
end
