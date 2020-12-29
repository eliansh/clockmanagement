class AddTeacherIdToTrackings < ActiveRecord::Migration[6.1]
  def change
    add_column :trackings, :teacher_id, :integer
    add_index :trackings, :teacher_id
  end
end
