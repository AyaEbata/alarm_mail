class AlermInfosController < ApplicationController
  before_action :set_alerm_info, only: [:show, :edit, :update, :destroy]

  # GET /alerm_infos
  # GET /alerm_infos.json
  def index
    @alerm_infos = AlermInfo.all
  end

  # GET /alerm_infos/1
  # GET /alerm_infos/1.json
  def show
  end

  # GET /alerm_infos/new
  def new
    @alerm_info = AlermInfo.new
  end

  # GET /alerm_infos/1/edit
  def edit
  end

  # POST /alerm_infos
  # POST /alerm_infos.json
  def create
    @alerm_info = AlermInfo.new(alerm_info_params)

    respond_to do |format|
      if @alerm_info.save
        format.html { redirect_to @alerm_info, notice: 'Alerm info was successfully created.' }
        format.json { render :show, status: :created, location: @alerm_info }
      else
        format.html { render :new }
        format.json { render json: @alerm_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alerm_infos/1
  # PATCH/PUT /alerm_infos/1.json
  def update
    respond_to do |format|
      if @alerm_info.update(alerm_info_params)
        format.html { redirect_to @alerm_info, notice: 'Alerm info was successfully updated.' }
        format.json { render :show, status: :ok, location: @alerm_info }
      else
        format.html { render :edit }
        format.json { render json: @alerm_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alerm_infos/1
  # DELETE /alerm_infos/1.json
  def destroy
    @alerm_info.destroy
    respond_to do |format|
      format.html { redirect_to alerm_infos_url, notice: 'Alerm info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alerm_info
      @alerm_info = AlermInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alerm_info_params
      params.require(:alerm_info).permit(:user_name, :kaisha_mail, :alerm_time, :iiwake)
    end
end
