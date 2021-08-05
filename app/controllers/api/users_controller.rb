class Api::UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(user_params)

        if @user.save
            render json: @user, status: :created
        else
            render json: {errors: @user.errors}, status: 403
        end
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
            render json: @user, status: :created
        else
            render json: {errors: @user.errors}, status: 403
        end
    end

    private

    def user_params
        params.require(:user).permit(
            :first_name, :last_name, :email, :birthday,
            :password, :linkedin_url, :twitter_url,
            :other_url, :tag_list, :city
        )
    end
end
