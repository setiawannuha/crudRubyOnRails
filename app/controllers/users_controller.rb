class UsersController < ApplicationController

    # skip_before_filter :verify_authenticity_token
    # rescue_from ActiveRecord::RecordNotFound, with: :notFound

    def index
        @users = User.all
        render json:{
            values: @users,
            message: 'success',
        }, status: 200
    end
    def show
        @user = User.find_by_id(params[:id])
        if @user.present?
            render json: {
                values: @user,
                message: 'success'
            }, status: 200
        else
            render json: {
                values: '',
                message: 'Data null'
            }, status: 400
        end
    end
    def create
        @user = User.new(user_params)
        if @user.save
            render json: {
                values: '',
                message: 'success'
            }, status: 200
        else
            render json: {
                values: '',
                message: 'Fail'
            }, status: 400
        end
    end
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: {
                values: '',
                message: 'success'
            }, status: 200
        else
            render json: {
                values: '',
                message: 'Fail'
            }, status: 400
        end
    end
    def destroy
        @user = User.find(params[:id])
        if @user.destroy
            render json: {
                values: '',
                message: 'success'
            }, status: 200
        else
            render json: {
                values: '',
                message: 'Fail'
            }, status: 400
        end
    end
    private
        def user_params
            params.permit(:name, :phone, :address)
        end

        def notFound
            render json:{
                values: '',
                message: 'Data not found'
            }, status: 400
        end
end
