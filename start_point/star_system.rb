class StarSystem
  attr_reader :name, :planets

    def initialize(name, planets)
      @name = name
      @planets = planets
    end

    def planet_names()
      return @planet.map{ |planet| planet.name}
    end

    def get_planet_by_name(name)
      @planets.find { |planet| planet.include?(name)}
    end

    def get_planets_with_no_moons()
      return @planets.find_all{ |planet| planet.number_of_moons == 0}
    end

    def get_planet_with_more_moons(number)
      return @planets.find_all { |planet| planet.number_of_moons > number}
    end

    def get_number_of_planets_closer_than(number)
      return @planets.select{ |planet| planet.distance_from_sun < number}.length
    end

    def get_largest_planet()
      return @planets.find{ |planet| planet.diameter.max}
    end

    def get_smallest_planet()
      return @planets.find{ |planet| planet.diameter.min}
    end

    def total_number_of_moons()
      return @planets.reduce(0) { |running_total, planet| running_total + planet.number_of_moons}
    end
    
    def get_planet_names_sorted_by_increasing_distance_from_sun()
      return @planets.sort{ |planet1, planet2| planet1.distance_from_sun <=  planet2.distance_from_sun}
    end

    def get_planet_names_sorted_by_size_decreasing()
      return @planets.sort{ |planet1, planet2| planet1.diameter >=  planet2.diameter}
    end

end
