class CreateAssertions < ActiveRecord::Migration
  def change
    create_table :assertions do |t|
      t.string :arguments
      t.integer :utility_id
      t.integer :user_id
      t.timestamps
    end
  end
end
