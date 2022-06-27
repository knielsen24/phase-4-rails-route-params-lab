class StudentsController < ApplicationController

	def index
		students = Student.where(first_name: params[:name].capitalize).or(Student.where(last_name: params[:name].capitalize))
		render json: students
	end

	def show
		student = Student.find_by(id: params[:id])
		render json: student
	end

end
