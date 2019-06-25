class Vehicle
    def initialize

    end
end

class Car
    def initialize year
        @model_year = year
        @wheels = 4
        @light = 'off'
        @signal = 'off'
        @speed = 0
        @type = 'Car'
    end
    def get_wheels
        @wheels
    end
    def light_switch
        @light == "off" ? @light = "on" : @light = "off"
        @light
    end
    def signal_switch (blinker)
        @signal = blinker
        @signal
    end
    def speedometer
        @speed
    end
    def accelerate
        @speed += 1
    end
    def brake
        @speed -= 5
    end
    def to_s
        str = "Type: #{@type} | Wheels: #{@wheels} | Lights: #{@light} | Signal: #{@signal} | Model Year: #{@model_year} | Speed: #{@speed}"
    end
    def year
        return @model_year.to_i
    end
end

class Tesla < Car
    def initialize year
        super(year)
        @type = 'Tesla'
    end
    def accelerate
        @speed = @speed + 10
    end
    def brake
        @speed = @speed -7
    end
    def to_s
        super()
    end
end

class Honda < Car
    def initialize year
        super(year)
        @type = 'Honda'
    end
    def accelerate
        @speed += 2
    end
    def brake
        @speed -= 1.25
    end
    def to_s
        super()
    end
end

class Toyota < Car
    def initialize year
        super(year)
        @type = 'Toyota'
    end
    def accelerate
        @speed += 7
    end
    def brake
        @speed -= 5
    end
    def to_s
        super()
    end
end

def garage_sort garage
    garage.sort_by { |car| car.year}
end
# my_car = Car.new
# my_vehicle = Vehicle.new
# my_tesla = Tesla.new
# my_toyota = Toyota.new
# my_honda = Honda.new
#
# puts my_car.light_switch
# puts my_car.light_switch
# puts my_car.light_switch
# puts my_car.light_switch
# puts my_tesla.signal_switch("left")
# puts my_tesla.accelerate
# puts my_tesla.speedometer
# puts my_car.to_s
# puts my_honda.to_s
# puts my_tesla.to_s

car1 = Car.new 1890
car2 = Car.new 1693
tesla1 = Tesla.new 5000
tesla2 = Tesla.new 1213
honda1 = Honda.new 3487
honda2 = Honda.new 70
toyota1 = Toyota.new 9000
toyota2 = Toyota.new 2

garage = []
garage << [car1,car2,tesla1,tesla2,honda1,honda2,toyota1,toyota2]
puts garage

puts garage_sort garage
