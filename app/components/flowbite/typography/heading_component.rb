# frozen_string_literal: true

class Flowbite::Typography::HeadingComponent < ViewComponent::Base
  def initialize(text:)
    @text = text
  end
end
