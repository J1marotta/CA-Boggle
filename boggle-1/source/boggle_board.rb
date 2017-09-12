class BoggleBoard

  def initialize
    # creates an array of 16 underscores
    @spaces = Array.new(16, "_")
    @alphabet = ("A".."Z").to_a
  end


  def shake!
    #new variable to save our original
    shuffled = @spaces
    output = String.new

    shuffled.map! { |x| @alphabet.sample}

    4.times do
      output << shuffled.shift(4).join + "\n"
    end

    output
  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    #new string for output
    output_string = String.new

    #new variable to preserve spaces
    letter_array = @spaces

    4.times do
      output_string << letter_array.shift(4).join + "\n"
    end

    output_string

  end


end


board = BoggleBoard.new
print board.shake!
