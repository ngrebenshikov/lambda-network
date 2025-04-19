# frozen_string_literal: true

module Livestreet
  class User < BaseRecord
    self.primary_key = :user_id

    has_many :livestreet_blog_users, :class_name => 'Livestreet::BlogUser', :foreign_key => :user_id
    has_many :blogs, :class_name => 'Livestreet::Blog', :through => :livestreet_blog_users
  end
end
