class AddImageToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :image, :string
  end
end
