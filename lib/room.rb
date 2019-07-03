class Room

  attr_reader :category, :area

    def initialize(category, area)
      @category = category
      @area = area
    end

    def category(category)
      @category = category
      end

    def area_1
      @area = 10 * 13
    end

    def area_2
      @area = 10 * 15
    end

    def area_3
      @area = 25 * 15
    end

    def area_4
      @area = 30 * 41
    end
end
