class AuthorsController < ApplicationController
  def index
@available_at = Time.now
    @authors = Author.order(:name)
  end

before_action :set_author, only: [ :show, :edit, :update, :destroy ]

  def show
    @author = Author.find(params[:id])
  end

def new
    @author = Author.new
  end

def create
  @author = Author.new(author_params)
  if @author.save
    #redirect_to @book
    redirect_to @author, notice: "#{@author.name} was created!"
    else
      render :new
    end
end

def edit
  #@author = Author.find(params[:id])
end

def update
  #@author = Author.find(params[:id])
  #@author.update(author_params)
  #redirect_to @author
  if @author.update(author_params)
    #redirect_to @author
    redirect_to @notice, notice: "#{@author.name} was updated!"
  else
      render :edit
  end
end

def destroy
  #@author = Author.find(params[:id])
  @author.destroy
  redirect_to books_url
end

private
def author_params
  params.require(:author).permit(:name, :dob, :nationality, :awards, :biography, :image_url)
end

def set_author
  @author = Author.find(params[:id])
end

end