class BoggleBoard

  def initialize
    # creates an array of 16 underscores
    @spaces = Array.new(16, "_")
    @alphabet = ("A".."Z").to_a
  end


  def shake!
    # new variable to save our original
    shuffled = @spaces
    
    shuffled.map! { |x| @alphabet.sample}

    # Using rows
    row1 = String.new
    row2 = String.new
    row3 = String.new
    row4 = String.new


    row1 << shuffled.sample(4).join
    row2 << shuffled.sample(4).join
    row3 << shuffled.sample(4).join
    row4 << shuffled.sample(4).join


    return row1, row2, row3, row4


  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    #new string for output
    output_string = String.new

    #new variable to preserve spaces
    letter_array = @spaces

    4.times do
      output_string << letter_array.sample(4).join + "\n"
    end

    output_string

  end


end
#

board = BoggleBoard.new
print board.to_s
puts board.shake!
