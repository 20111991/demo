class ChangeDobTypeInStudents < ActiveRecord::Migration[5.0]
  def self.up
  	change_column :students, :dob, :date
  end
  def self.down
  	change_column :students, :dob, :string
  end
end
