class StudentsController < ApplicationController
	def index
		@students =Student.all
	end
	def new
		@student=Student.new
	end
	def create
		@student= Student.new(student_params)
		if @student.save
		redirect_to "/students"
	    else
	    	render 'new'
	    end
	end
	def show
		@student=Student.find(params[:id])
	end
	def edit
		@student= Student.find(params[:id])
	end
	def update
		@student=Student.find(params[:id])
		# params[:dob] = "#{params[:dob]['birth_date(3i)']}-#{params[:dob]['birth_date(2i)']}-#{params[:dob]['birth_date(1i)']}"
		# binding.pry
		@student.update(student_params)
		redirect_to"/students"
	end
	def destroy
		@student=Student.find(params[:id])
		@student.delete
		redirect_to "/students"
	end
	private
	def student_params
		params.require(:student).permit(:firstname, :lastname, :dob, :rollno, :course, :subject)
	end
		
end
