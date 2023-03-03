class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find(params[:id])
    @movies = @bookmark.movie
  end

  def new
    @bookmark = Bookmark.new
    @movies_array = Movie.all
    @movies = []
    @movies_array.each do |movie|
      @movies << movie.id
    end
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list_id = params[:id]
    if @bookmark.save
      redirect_to list_path(@bookmark.list), notice: "Invalid inputs!"
    else
      redirect_to list_path(params[:id]), notice: "Film added to list!"
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmark_path(@bookmark)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
