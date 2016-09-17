class AddDetailsToVersions < ActiveRecord::Migration[5.0]
  def change
    add_column :versions, :download, :string
    add_column :versions, :force, :boolean
    add_column :versions, :type, :string
  end
end
