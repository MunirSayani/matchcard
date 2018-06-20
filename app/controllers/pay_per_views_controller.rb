class PayPerViewsController < ApplicationController
  before_action :set_pay_per_view, only: [:show, :edit, :update, :destroy]

  # GET /pay_per_views
  # GET /pay_per_views.json
  def index
    @pay_per_views = PayPerView.all
  end

  # GET /pay_per_views/1
  # GET /pay_per_views/1.json
  def show
  end

  # GET /pay_per_views/new
  def new
    @pay_per_view = PayPerView.new
  end

  # GET /pay_per_views/1/edit
  def edit
  end

  # POST /pay_per_views
  # POST /pay_per_views.json
  def create
    @pay_per_view = PayPerView.new(pay_per_view_params)

    @pay_per_view.update(pay_per_view_matches_params)

    respond_to do |format|
      if @pay_per_view.save
        format.html { redirect_to @pay_per_view, notice: 'Pay per view was successfully created.' }
        format.json { render :show, status: :created, location: @pay_per_view }
      else
        format.html { render :new }
        format.json { render json: @pay_per_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pay_per_views/1
  # PATCH/PUT /pay_per_views/1.json
  def update
    @pay_per_view.update(pay_per_view_matches_params)

    respond_to do |format|
      if @pay_per_view.update(pay_per_view_params)
        format.html { redirect_to @pay_per_view, notice: 'Pay per view was successfully updated.' }
        format.json { render :show, status: :ok, location: @pay_per_view }
      else
        format.html { render :edit }
        format.json { render json: @pay_per_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pay_per_views/1
  # DELETE /pay_per_views/1.json
  def destroy
    @pay_per_view.destroy
    respond_to do |format|
      format.html { redirect_to pay_per_views_url, notice: 'Pay per view was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pay_per_view
      @pay_per_view = PayPerView.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pay_per_view_params
      # params.fetch(:pay_per_view, {})
      params.require(:pay_per_view).permit(:name, :type)
    end

    def pay_per_view_matches_params
      params.require(:pay_per_view).permit(:matches_attributes).tap do |whitelisted|
        whitelisted[:matches_attributes] = params[:pay_per_view][:matches_attributes]
      end.permit!
    end
end
