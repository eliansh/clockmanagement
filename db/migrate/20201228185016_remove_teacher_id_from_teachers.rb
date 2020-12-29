class RemoveTeacherIdFromTeachers < ActiveRecord::Migration[6.1]
  def change
    remove_index :teachers, :teacher_id
    remove_column :teachers, :teacher_id, :integer
  end
end
