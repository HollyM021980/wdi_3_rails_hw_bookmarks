class BookmarksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookmark_params
      params.require(:bookmark).permit(:url, :title)
    end

end