class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @movies = @list.movies
    @bookmarks = @list.bookmarks
    @comments = []

    @bookmarks.each do |bookmark|
      @comments << bookmark.comment
    end
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      redirect_to lists_path
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
