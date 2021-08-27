require_relative 'instance_counter.rb'

class Route

  include InstanceCounter

  attr_reader :first_station, :last_station

  def initialize(first_station, last_station)
    @first_station = first_station
    @last_station = last_station
    @list_interm_station = [] # список(массив) промежуточных станций
    register_instance
  end

  def add_interm_station(station) # добавляем промежуточную станцию
    @list_interm_station << station 
  end

  def delete_interm_station(station) # удаляем промежуточную станцию
    if @list_interm_station.include?(station)
      @list_interm_station.delete("#{station}")
    else
      puts "Станции #{station} нет в маршруте "
    end
  end
  
  def route
    route = [@first_station, @list_interm_station, @last_station].flatten!
    route.each_with_index do |name_station, index|
    end
  end
  
  def all_stations_on_route
    route = [@first_station, @list_interm_station, @last_station].flatten!
  end
end
