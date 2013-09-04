class AddVersionIdToAssertions < ActiveRecord::Migration
  def change
    add_column :assertions, :version_id, :integer
  end
end
