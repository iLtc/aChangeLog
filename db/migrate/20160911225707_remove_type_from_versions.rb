class RemoveTypeFromVersions < ActiveRecord::Migration[5.0]
  def change
    remove_column :versions, :type, :string
  end
end
