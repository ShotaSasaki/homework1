class AddFriendToFriendship < ActiveRecord::Migration[5.2]
  def change
    remove_reference :friendships, :friend
    add_reference :friendships, :friend, foreign_key: false
  end
end