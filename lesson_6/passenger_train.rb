require_relative 'train.rb'

class PassengerTrain < Train
  
  def initialize (number)
    super(number, type = "passenger")
  end
end

  