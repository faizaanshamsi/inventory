class EntriesController < ApplicationController

 def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to new_entry_path, notice: 'Entry successfully created'
    else
      render :new
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :quantity)
  end
end
