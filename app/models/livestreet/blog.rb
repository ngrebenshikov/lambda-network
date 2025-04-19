# frozen_string_literal: true

module Livestreet
  class Blog < BaseRecord
    self.primary_key = :blog_id

    has_many :blog_users, :class_name => 'Livestreet::BlogUser', :foreign_key => :blog_id
    has_many :users, :class_name => 'Livestreet::User', :through => :livestreet_blog_users
  end
end
