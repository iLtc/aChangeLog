class AddStatusToVersions < ActiveRecord::Migration[5.0]
  def change
    add_column :versions, :status, :string
  end
end
