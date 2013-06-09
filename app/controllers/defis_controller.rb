class DefisController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update, :index, :destroy, :create, :new]
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user,     only: :destroy

  def new
  	@defi = Defi.new
  end

  def show
    @defi = Defi.find(params[:id])
  end

  def index
    @users = User.paginate(page: params[:page])
  end
  
  def defisrealises
  	@defi = Defi.paginate(page: params[:page])
  end

  def defisarealiser
  	@defi = Defi.paginate(page: params[:page])
  end

  def create
  	@defi = Defi.new(params[:defi])
  	@defi.createur = current_user.id
    if @defi.save
      redirect_to @defi
      flash[:success] = "Défi créé"
      # Handle a successful save.
    else
      render 'new'
    end
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
