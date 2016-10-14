class FavoritesController < ApplicationController
  before_action :set_board
  before_action :set_favorite, only: [:show, :edit, :update, :destroy]

  # GET /favorites
  # GET /favorites.json
  def index
    @favorites = @board.favorites.all
  end

  # GET /favorites/1
  # GET /favorites/1.json
  def show
  end

  # GET /favorites/new
  def new
    @favorite = @board.favorites.new
  end

  # GET /favorites/1/edit
  def edit
  end

  # POST /favorites
  # POST /favorites.json
  def create
    @favorite = @board.favorite.new(favorite_params)

    respond_to do |format|
      if @favorite.save
        format.html { redirect_to @board, notice: 'Favorite was successfully created.' }
        format.json { render :show, status: :created, location: @favorite }
      else
        format.html { render :new }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorites/1
  # PATCH/PUT /favorites/1.json
  def update
    respond_to do |format|
      if @favorite.update(favorite_params)
        format.html { redirect_to @favorite, notice: 'Favorite was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite }
      else
        format.html { render :edit }
        format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to @board, notice: 'Favorite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite
      @favorite = @board.favorites.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_params
      params.require(:favorite).permit(:fav_author, :fav_content, :user_id, :message_id)
    end

    def set_board
      @board = Board.find(params[:board_id])
    end
end
