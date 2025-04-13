# frozen_string_literal: true

class Flowbite::PaginationComponent < ViewComponent::Base
  include Pagy::Frontend

  def initialize(pagy:)
    @pagy = pagy
  end
end
