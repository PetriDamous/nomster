class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      #new fields that keep track of messages or comments from users and the rating
      t.text :message
      t.string :rating
      #points to user_id and place_id in other tables
      t.integer :user_id
      t.integer :place_id
      t.timestamps
    end
    #speeds up search for both user_id by itself or user_id and place_id together
    add_index :comments, [:user_id, :place_id]
    #speeds up search for the place id by its self
    add_index :comments, :place_id
  end
end
