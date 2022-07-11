class NotesController < ApplicationController
  def index
    notes = Note.all
    render json: notes
  end

  def show
    note = Note.find_by(id: params[:id])
    render json: note
  end 

  def create
    note = Note.new(
      recipe_id: params["recipe_id"],
      note: params["note"]
    )

    if note.save
      render json: note
    else  
      render json: {errors: notes.errors.full_messages}, status: 422
    end
  end 
end
