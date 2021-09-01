require_relative 'station.rb'
require_relative 'route.rb'
require_relative 'train.rb'
require_relative 'passenger_train.rb'
require_relative 'cargo_train.rb'
require_relative 'wagons.rb'
require_relative 'interface.rb'

interface = TextInterface.new
interface.run

