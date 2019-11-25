class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to users_index_path
        else
            redirect_to users_index_path
        end
    end
    def create_ajax
        @user = User.new(user_params)
        if @user.save
            render json: {
                status: "true"
            }
        else
            render json: {
                status: "false"
            }
        end
    end
    def edit
        @user = User.find(params[:id])
    end
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to users_index_path
        else
            redirect_to users_index_path
        end
    end
    def destroy
        @user = User.find(params[:id])
        if @user.destroy
            redirect_to users_index_path
        else
            redirect_to users_index_path
        end
    end

    private
    def user_params
        params.permit(:name, :phone_number, :address)
    end
end
