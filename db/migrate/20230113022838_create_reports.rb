class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :about
      t.date :day
      t.datetime :start_time
      t.timestamps
    end
  end
end
