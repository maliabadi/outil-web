class CreateUserToUtility < ActiveRecord::Migration
  def change
    create_table :user_to_utility do |t|
      t.integer :utility_id
      t.integer :user_id

      t.timestamps
    end
  end
end
