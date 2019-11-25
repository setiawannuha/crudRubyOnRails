class SchoolsController < ApplicationController
    def index 
        @schools = School.all
    end

    def create
        @school = School.new(school_params)
        if @school.save
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
        @school = School.find(params[:id])
        if @school.destroy
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
    def school_params
        params.permit(:school_number, :name, :address)
    end
end
