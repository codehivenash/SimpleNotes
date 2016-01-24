class Api::V1::NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  respond_to :json

  # GET /api/v1/notes
  # GET /api/v1/notes.json
  def show
    @notes = Note.all
  end

  # GET /api/v1/notes/1
  # GET /api/v1/notes/1.json
  def show
  end

  # GET /api/v1/notes/new
  def new
    @note = Note.new
  end

  # GET /api/v1/notes/1/edit
  def edit
  end

  # POST /api/v1/notes
  # POST /api/v1/notes.json
  def create
    @note = Note.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/notes/1
  # PATCH/PUT /api/v1/notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/notes/1
  # DELETE /api/v1/notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:name, :description, :tags, :owner, :status)
    end
end
