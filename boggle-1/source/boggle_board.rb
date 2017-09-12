class BoggleBoard

  def initialize
    topline = ["_""_""_""_"]
    second = ["_""_""_""_"]
    third = ["_""_""_""_"]
    fourth = ["_""_""_""_"]

    puts topline
    puts second
    puts third
    puts fourth

  end

  def shake!
    
  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    "omg what is this? try printing me."
  end
end

board = BoggleBoard.new
