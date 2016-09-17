class RemoveVersionFromVersions < ActiveRecord::Migration[5.0]
  def change
    remove_column :versions, :version, :string
  end
end
