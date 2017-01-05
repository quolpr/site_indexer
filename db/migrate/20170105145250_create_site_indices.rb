class CreateSiteIndices < ActiveRecord::Migration[5.0]
  def change
    create_table :site_indices do |t|
      t.string :url
      t.string :status, default: 'in_progress'
      t.string :http_status

      t.timestamps
    end
  end
end
