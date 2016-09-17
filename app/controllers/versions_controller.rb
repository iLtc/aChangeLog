class VersionsController < ApplicationController
  before_action :set_user, only: [:show, :new, :edit, :create, :update, :destroy]
  before_action :set_app, only: [:show, :new, :edit, :create, :update, :destroy]
  before_action :set_version, only: [:show, :edit, :update, :destroy]

  # GET /versions
  # GET /versions.json
  def index
    @versions = Version.all
  end

  # GET /versions/1
  # GET /versions/1.json
  def show
  end

  # GET /versions/new
  def new
    @version = Version.new
  end

  # GET /versions/1/edit
  def edit
  end

  # POST /versions
  # POST /versions.json
  def create
    @version = @app.versions.new(version_params)

    respond_to do |format|
      if @version.save
        format.html { redirect_to user_app_version_path(@user, @app, @version), notice: 'Version was successfully created.' }
        format.json { render :show, status: :created, location: @version }
      else
        format.html { render :new }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /versions/1
  # PATCH/PUT /versions/1.json
  def update
    respond_to do |format|
      if @version.update(version_params)
        format.html { redirect_to @version, notice: 'Version was successfully updated.' }
        format.json { render :show, status: :ok, location: @version }
      else
        format.html { render :edit }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /versions/1
  # DELETE /versions/1.json
  def destroy
    @version.destroy
    respond_to do |format|
      format.html { redirect_to versions_url, notice: 'Version was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end
  
    def set_app
      @app = @user.apps.find(params[:app_id])
    end
  
    def set_version
      @version = @app.versions.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def version_params
      params.require(:version).permit(:name, :code, :download, :description, :app_id, :force, :status)
    end
end