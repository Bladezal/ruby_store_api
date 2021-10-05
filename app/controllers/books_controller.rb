class BooksController < ApplicationController
    def index
        @books = Book.all
        render json: @books
    end

    def show
        @book = Book.find(params[:id])
    end

    def create
        @category = Category.find(params[:book][:category])
        @book = @category.books.create(book_params)

        if @book.save
            render json: @book
        else
            render json: @book.errors, status: :unprocessable_entity
        end
    end

    def update
        @category = Category.find(params[:book][:category])
        @book = @category.books.create(book_params)

        if @book.update(book_params)
            render json: @book
        else
            render json: @book.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        render json: @book
    end
    
    private
        def book_params
            params.require(:book).permit(:name, :price, :author, :editor, :description)
        end
end
