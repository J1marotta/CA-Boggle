class Dice

  def initialize (side1, side2, side3, side4, side5, side6)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @side4 = side4
    @side5 = side5
    @side6 = side6

  end


  def rolldice
    sides = [@side1, @side2, @side3, @side4, @side5, @side6]
    roll = sides.sample
    roll
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

end

# AAEEGN
dice1 = Dice.new("A","A","E","E","G","N")
# ELRTTY
dice2 = Dice.new("E","L","R","T","T","Y")
# AOOTTW
dice3 = Dice.new("A","O","O","T","T","W")
# ABBJOO
dice4 = Dice.new("A","B","B","J","O","O")
# EHRTVW
dice5 = Dice.new("E","H","R","T","V","W")
# CIMOTU
dice6 = Dice.new("C","I","M","O","T","U")
# DISTTY
dice7 = Dice.new("D","I","S","T","T","Y")
# EIOSST
dice8 = Dice.new("E","I","O","S","S","T")
# DELRVY
dice9 = Dice.new("D","E","L","R","V","Y")
# ACHOPS
dice10 = Dice.new("A","C","H","O","P","S")
# HIMNQU
dice11 = Dice.new("H","I","M","N","Q","U")
# EEINSU
dice12 = Dice.new("E","E","I","N","S","U")
# EEGHNW
dice13 = Dice.new("E","E","G","H","N","W")
# AFFKPS
dice14 = Dice.new("A","F","F","K","P","S")
#HLNNRZ
dice15 = Dice.new("H","L","N","N","R","Z")
# DEILRX
dice16 = Dice.new("D","E","I","L","R","X")



20.times do Dice.all.each do |dice|
  #counter = 1
  #print dice.rolldice
  #counter = counter + 1
  print dice.rolldice
end
end
