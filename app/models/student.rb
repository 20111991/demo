class Student < ApplicationRecord
	after_initialize do |student|
    puts "You have initialized an object!"
  end
 
  after_find do |student|
    puts "You have found an object!"
  end

 after_save do |student|
    puts "You have saved an object"
  end

	validates :firstname, presence: true, length: { maximum: 10}
	validates :lastname, presence: true, length: { maximum: 10}
	validates :rollno, numericality: true, length: {maximum: 10}

end
