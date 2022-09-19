class AuthorsController < ApplicationController
before_action :find_author, only: (:edit , :show , :update, :delete)

  def index
    @author = Author.all
  end

  def create
    @author = Author.new(author_params)
        if @author.save
          redirect_to authors_index_path
        end
      else
        redirect_to authors_create_path
    end
  end

  def new
    @author = Author.new
  end

  def show
  end

  def edit
  end

  def update
    @author.update(author_params)
    redirect_to authors_index_path
  end

  def delete
    @author.destroy
      redirect_to authors_index_path
  end
  
  private
  def author_params
    auhtor.params.require(:author).permit(:name, :book_name, :Created_date)
  end

  def find_author
    @author = Author.find(params[:id])
  end

end
