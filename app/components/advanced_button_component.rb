# frozen_string_literal: true

class AdvancedButtonComponent < ViewComponent::Base
    include ApplicationHelper
    PRIMARY  = "primary"
    SECONDARY = "secondary"
    TEXT = "text"
    OUTLINE = "outline"
    SM = "sm"
    MD = "md"
    LG = "lg"
    BTN_SIZES = [SM, MD, LG].freeze
    BTN_TYPES = [PRIMARY, SECONDARY, TEXT, OUTLINE].freeze

    attr_reader  :options, :variant, :size, :icon, :type, :permitted

    def initialize(options: {}, type: PRIMARY, size: MD, icon: nil, permitted: true)
      @options = options
      @type = type
      @size = size
      @icon = icon
      @permitted = permitted
      set_classes
    end

    private

    def set_classes
      options[:class] = "#{options.fetch(:class, '')} btn btn-#{size} btn-#{type}".strip
    end
end
