class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  # def show
  # end

  # def new
  # end

  # def update
  # end

  # def destroy
  # end
end
