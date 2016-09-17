class AddPackageToApps < ActiveRecord::Migration[5.0]
  def change
    add_column :apps, :package, :string
  end
end
