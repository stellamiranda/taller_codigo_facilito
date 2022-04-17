class AddUserIdToTweets < ActiveRecord::Migration[7.0]
  def change
    add_column :tweeets, :user_id, :integer
  end
end
