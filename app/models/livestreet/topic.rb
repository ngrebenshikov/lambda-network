# frozen_string_literal: true

module Livestreet
  class Topic < BaseRecord
    self.primary_key = :topic_id

    belongs_to :user, class_name: "Livestreet::User"
    belongs_to :blog, class_name: "Livestreet::Blog"
    has_one :content, class_name: "Livestreet::TopicContent"
  end
end
