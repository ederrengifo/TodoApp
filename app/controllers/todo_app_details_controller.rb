class TodoAppDetailsController < ApplicationController
  before_action :set_todo_app_list, only: [:show, :edit, :update, :destroy]

  # GET /todo_app_lists
  # GET /todo_app_lists.json
  def index
    @todo_app_lists = TodoAppDetail.all
  end

  # GET /todo_app_lists/1
  # GET /todo_app_lists/1.json
  def show
  end

  # GET /todo_app_lists/new
  def new
    @todo_app_list = TodoAppDetail.new
  end

  # GET /todo_app_lists/1/edit
  def edit
  end

  # POST /todo_app_lists
  # POST /todo_app_lists.json
  def create
    @todo_app_list = TodoAppDetail.new(todo_app_list_params)

    respond_to do |format|
      if @todo_app_details.save
        format.html { redirect_to @todo_app_details, notice: 'Todo app list was successfully created.' }
        format.json { render :show, status: :created, location: @todo_app_details }
      else
        format.html { render :new }
        format.json { render json: @todo_app_details.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_app_lists/1
  # PATCH/PUT /todo_app_lists/1.json
  def update
    respond_to do |format|
      if @todo_app_details.update(todo_app_list_params)
        format.html { redirect_to @todo_app_details, notice: 'Todo app list was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_app_details }
      else
        format.html { render :edit }
        format.json { render json: @todo_app_details.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_app_lists/1
  # DELETE /todo_app_lists/1.json
  def destroy
    @todo_app_details.destroy
    respond_to do |format|
      format.html { redirect_to todo_app_lists_url, notice: 'Todo app list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_app_list
      @todo_app_details = TodoAppDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_app_list_params
      params.require(:todo_app_details).permit(:title)
    end
end
