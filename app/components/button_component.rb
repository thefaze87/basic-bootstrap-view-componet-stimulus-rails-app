# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  def initialize(btnLabel:, btnHref:, btnTarget:"self", btnClass:"")
    @btnLabel = btnLabel
    @btnHref = btnHref
    @btnTarget = btnTarget
    @btnClass = btnClass
  end
end
