# frozen_string_literal: true

class ItemCardComponent < ViewComponent::Base
  renders_one :image

  def initialize(title:, description:)
    @title = title
    @description = description
  end
end
