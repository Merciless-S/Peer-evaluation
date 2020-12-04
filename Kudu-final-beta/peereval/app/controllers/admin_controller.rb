class AdminController < ApplicationController
  def index
    @admin = Admin.all
  end

  def new
    @admin = Admin.new
  end
    
def start
  @teams = Team.all
end
def team
  @team = Team.find(params[:id])
  @users = @team.users
end
  def create
    @admin = Amin.new(user_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin.update(user_params)
        format.html { redirect_to @admin, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def admin_params
    params.require(:admon).permit(:email, :name, :password, :password_confirmation)
  end
end
