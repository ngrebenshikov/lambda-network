class TopicsController < ApplicationController
  def index
    @pagy, @topics = pagy(Topic.all)
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def new
  end
end
