class RemoveFriendFromFriendship < ActiveRecord::Migration[5.2]
  def change
    remove_reference :friendships, :friend, foreign_key: true
  end
end
