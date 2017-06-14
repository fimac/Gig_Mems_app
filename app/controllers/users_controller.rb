class UsersController < ApplicationController

  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update]

  def index
    @all_users = User.all
    # @user = User.find_by(id: params['id'])

  end

  def show
    @user = User.find(params[:id])
    chatrooms = @current_user.chatrooms
    @existing_chatrooms_users = @current_user.existing_chatrooms_users
  end

  def new
    @user = User.new
  end

  def create

    @user = User.new( user_params )
    if params[:user][:link]
      cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "link" ] )
      @user.image = cloudinary["url"]
    end
    if @user.save
      session[:user_id] = @user.id
      redirect_to edit_user_path( @user )
    else
      render :new # Show them the Sign Up form again
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update( user_params )
    if params[:user][:link]
      cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "link" ] )
      user.image = cloudinary["url"]
    end
    user.save
    redirect_to "/search"
  end

  def destroy
    user = User.find_by( id: params['id'] )
    user.destroy
    redirect_to "/users"
  end


   private

      def user_params

        params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation, :building_number, :street, :city, :state, :country)
      end

      def check_if_logged_out
        if @current_user
          flash[:error] = "You are already logged in"
          redirect_to "/users"
        end
      end

      def check_if_logged_in
        unless @current_user
          flash[:error] = "You need to be logged in for that"
          redirect_to "/login"
        end
  end

end
