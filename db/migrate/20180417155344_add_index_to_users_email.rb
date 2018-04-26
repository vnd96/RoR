class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :users, :email, unique: true
    add_column :users, :password_digest, :string
    add_column :users, :gender, :integer
  end
end
