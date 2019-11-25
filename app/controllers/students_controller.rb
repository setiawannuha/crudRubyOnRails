class StudentsController < ApplicationController
    def index
        @students = Student.all
        respond_to do |format|
            format.html
            format.json {
                render :json => @students.to_json(:include => { :user => {:only => [:name, :phone_number, :address]} })
            }
        end
        @users = User.all
        @schools = School.all
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            render json: {
                status: true
            }
        else
            render json: {
                status: false
            }
        end
    end

    def destroy
        @student = Student.find(params[:id])
        if @student.destroy
            render json: {
                status: true
            }
        else
            render json: {
                status: false
            }
        end
    end

    private
    def student_params
        params.permit(:nis, :user_id, :school_id)
    end
end
