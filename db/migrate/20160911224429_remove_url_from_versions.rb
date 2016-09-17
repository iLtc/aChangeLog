class RemoveUrlFromVersions < ActiveRecord::Migration[5.0]
  def change
    remove_column :versions, :url, :string
  end
end
