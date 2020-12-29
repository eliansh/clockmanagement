class CreateTrackings < ActiveRecord::Migration[6.1]
  def change
    create_table :trackings do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.date :date
      t.string :clock_in_out
      t.time :clock_time

      t.timestamps
    end
  end
end
