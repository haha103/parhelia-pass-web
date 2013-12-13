class EntriesController < ApplicationController
  def new
  end

	def update
		@entry = Entry.find(params[:id])
		respond_to do |f|
			if @entry.update_attributes(params[:entry])
				f.html { redirect_to(@entry, :notice => 'Entry was successfully updated.') }
				f.json { respond_with_bip(@entry) }
			else
				f.html { render :action => "edit" }
				f.json { respond_with_bip(@entry) }
			end
		end
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
