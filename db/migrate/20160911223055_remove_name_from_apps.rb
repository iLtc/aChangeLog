class RemoveNameFromApps < ActiveRecord::Migration[5.0]
  def change
    remove_column :apps, :name, :string
  end
end
