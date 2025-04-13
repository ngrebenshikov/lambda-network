# frozen_string_literal: true

class TopicComponent < ViewComponent::Base
  def initialize(topic:)
    @title = topic.title
  end
end
