class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :screen_name
      t.string :password
      t.string :profile_image_path

      t.timestamps
    end
  end
end
