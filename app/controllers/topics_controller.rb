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
    @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
      redirect_to @topic
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  def new
  end

  private

  def topic_params
    params.expect(topic: [:title, :body])
  end
end
