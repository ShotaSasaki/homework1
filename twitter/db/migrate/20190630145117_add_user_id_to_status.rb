class AddUserIdToStatus < ActiveRecord::Migration[5.2]
  def change
    add_reference :statuses, :user, foreign_key: true
  end
end
