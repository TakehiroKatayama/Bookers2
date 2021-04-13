class UsersController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
    @book = Book.new
  end

  def edit

  end

  def update

  end


end
