class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string     :content
      t.integer    :user_id
      t.integer    :posting_id
      t.timestamps
    end

    add_foreign_key :comments, :users
    add_foreign_key :comments, :postings
  end
end
