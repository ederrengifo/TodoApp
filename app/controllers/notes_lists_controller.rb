class NotesListsController < ApplicationController
  before_action :set_note
  before_action :set_notes_list, only: [:show, :edit, :update, :destroy]

  # GET /notes_lists
  # GET /notes_lists.json
  def index
    @notes_lists = @note.notes_lists.all
  end

  # GET /notes_lists/1
  # GET /notes_lists/1.json
  def show
  end

  # GET /notes_lists/new
  def new
    @notes_list = @note.notes_lists.new
  end

  # GET /notes_lists/1/edit
  def edit
  end

  # POST /notes_lists
  # POST /notes_lists.json
  def create
    @notes_list = @note.notes_lists.new(notes_list_params)
    respond_to do |format|
      if @notes_list.save
        format.html { redirect_to @note, notice: 'Notes list was successfully created.' }
        format.json { render :show, status: :created, location: @notes_list }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes_lists/1
  # PATCH/PUT /notes_lists/1.json
  def update
    respond_to do |format|
      if @notes_list.update(notes_list_params)
        format.html { redirect_to @notes_list, notice: 'Notes list was successfully updated.' }
        format.json { render :show, status: :ok, location: @notes_list }
      else
        format.html { render :edit }
        format.json { render json: @notes_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes_lists/1
  # DELETE /notes_lists/1.json
  def destroy
    @notes_list.destroy
    respond_to do |format|
      format.html { redirect_to @note, notice: 'Notes list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notes_list
      @notes_list = @note.notes_lists.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notes_list_params
      params.require(:notes_list).permit(:txtTitle, :txt, :codeTitle, :code, :embedTitle, :embed, :noteStatus)
    end

    def set_note
      @note = Note.find(params[:note_id])
    end
end
