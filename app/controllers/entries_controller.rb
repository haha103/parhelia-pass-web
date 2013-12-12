class EntriesController < ApplicationController
  def new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.save
    redirect_to @entry
  end

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private
  def entry_params
    params.required(:entry).permit(:key, :owner, :user, :password, :category, :comments)
  end
end
