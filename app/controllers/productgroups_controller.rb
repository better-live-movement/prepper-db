class ProductgroupsController < ApplicationController
  before_action :set_productgroup, only: [:show, :edit, :update, :destroy]

  # GET /productgroups
  # GET /productgroups.json
  def index
    @productgroups = Productgroup.all
  end

  # GET /productgroups/1
  # GET /productgroups/1.json
  def show
  end

  # GET /productgroups/new
  def new
    @productgroup = Productgroup.new
  end

  # GET /productgroups/1/edit
  def edit
  end

  # POST /productgroups
  # POST /productgroups.json
  def create
    @productgroup = Productgroup.new(productgroup_params)

    respond_to do |format|
      if @productgroup.save
        format.html { redirect_to @productgroup, notice: 'Productgroup was successfully created.' }
        format.json { render :show, status: :created, location: @productgroup }
      else
        format.html { render :new }
        format.json { render json: @productgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productgroups/1
  # PATCH/PUT /productgroups/1.json
  def update
    respond_to do |format|
      if @productgroup.update(productgroup_params)
        format.html { redirect_to @productgroup, notice: 'Productgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @productgroup }
      else
        format.html { render :edit }
        format.json { render json: @productgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productgroups/1
  # DELETE /productgroups/1.json
  def destroy
    @productgroup.destroy
    respond_to do |format|
      format.html { redirect_to productgroups_url, notice: 'Productgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productgroup
      @productgroup = Productgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productgroup_params
      params.require(:productgroup).permit(:name, :description, :food_group, :min_weight)
    end
end
