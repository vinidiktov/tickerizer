module TickerViewer
  class Component < ViewComponent::Base
    attr_reader :ticker

    def initialize(ticker:)
      @ticker = ticker

      super
    end

    def change_color
      value = ticker.change
      if value.negative?
        'red'
      else
        'green'
      end
    end

    # negative numbers have a - sign but positive ones don't
    def change_value(attribute)
      value = ticker.send(attribute)
      if value.positive?
        "+#{value}"
      else
        value
      end
    end
  end
end
