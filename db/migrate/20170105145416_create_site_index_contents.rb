class CreateSiteIndexContents < ActiveRecord::Migration[5.0]
  def change
    create_table :site_index_contents do |t|
      t.string :tag
      t.string :content
      t.references :site_index, foreign_key: true

      t.timestamps
    end
  end
end
