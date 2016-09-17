class CreateVersions < ActiveRecord::Migration[5.0]
  def change
    create_table :versions do |t|
      t.string :version
      t.string :name
      t.string :code
      t.string :url
      t.text :description
      t.references :app, foreign_key: true

      t.timestamps
    end
  end
end
