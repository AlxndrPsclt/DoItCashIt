class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update, :index, :destroy, :promove_admin]
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user,     only: [:destroy, :promove_admin]

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  def new
  	@user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      redirect_to @user
      flash[:success] = "Inscription réussie"
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def index
    @users = User.paginate(page: params[:page])
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profil mis à jour"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Utilisateur supprimé."
    redirect_to users_url
  end

    private

      def signed_in_user
        unless signed_in?
          store_location
          redirect_to signin_url, notice: "Connectez vous pour acceder à cette page."
        end
      end

      def correct_user
        @user = User.find(params[:id])
        redirect_to home_path , notice: "Vous n'avez pas les permissions nécessaires pour acceder à cette page" unless current_user?(@user) 
      end

      def admin_user
      redirect_to(home_path) unless current_user.admin?
      end
end