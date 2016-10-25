class DreamsController < ApplicationController
  before_action :get_dream, only: [:show, :edit, :update, :destroy]

  def index
    @dreams = Dream.all
  end

  def show
  end

  def new
    @dream = Dream.new
  end

  def create
    dream = Dream.new(dream_params)
    if dream.save
      redirect_to dream
    else
      redirect_to new_dream_path
    end
  end

  def edit
  end

  def update
    if @dream.update(dream_params)
      redirect_to @dream
    else
      redirect_to edit_dream_path(@dream)
    end
  end

  def destroy
    if @dream.destroy
      redirect_to dreams_path
    end
  end

  private

  def dream_params
    params.require(:dream).permit(:title, :dream)
  end

  def get_dream
    @dream ||= Dream.find(params[:id])
  end
end
