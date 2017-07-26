class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.text :firstname
      t.text :lastname
      t.string :dob
      t.string :rollno
      t.string :course
      t.string :subject

      t.timestamps
    end
  end
end
