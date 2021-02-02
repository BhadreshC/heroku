class CreateJoinTableStudentTeacher < ActiveRecord::Migration[6.0]
  def change
    create_join_table :Teachers, :Students do |t|
      t.index [:teacher_id, :student_id]
      t.index [:student_id, :teacher_id]
    end
  end
end
