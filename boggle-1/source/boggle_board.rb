
# # initalize dice constants
# #
# DICE = [["A","A","E","E","G","N"],
#         ["E","L","R","T","T","Y"],
#         ["A","O","O","T","T","W"],
#         ["A","B","B","J","O","O"],
#         ["E","H","R","T","V","W"],
#         ["C","I","M","O","T","U"],
#         ["D","I","S","T","T","Y"],
#         ["E","I","O","S","S","T"],
#         ["D","E","L","R","V","Y"],
#         ["A","C","H","O","P","S"],
#         ["H","I","M","N","Q","U"],
#         ["E","E","I","N","S","U"],
#         ["E","E","G","H","N","W"],
#         ["A","F","F","K","P","S"],
#         ["H","L","N","N","R","Z"],
#         ["D","E","I","L","R","X"]]

DICE = ["A","B","C","Q","Q","Q"]




class BoggleBoard

  def initialize
    # creates an array of 16 underscores
    @spaces = Array.new(16, "_")

  end


  def shake!
    # new variable to save our original
    emptyboard = @spaces

    # randomise with our constants with access 6 deep into the arrays
    emptyboard = DICE.map {|die| die[rand(1)]}

    # Using rows
    row1 = String.new
    row2 = String.new
    row3 = String.new
    row4 = String.new


    emptyboard.map! { |el| el == "Q" ? "Qu" : el + " " }

    row1 << emptyboard.sample(4).join("  ")
    row2 << emptyboard.sample(4).join("  ")
    row3 << emptyboard.sample(4).join("  ")
    row4 << emptyboard.sample(4).join("  ")

    #
    # barry = emptyboard.include?("Q")
    # if barry == true
    #   row1 << emptyboard.sample(4).join("  ").gsub("Q ", "Qu") + " "
    #   row2 << emptyboard.sample(4).join("  ").gsub("Q ", "Qu") + " "
    #   row3 << emptyboard.sample(4).join("  ").gsub("Q ", "Qu") + " "
    #   row4 << emptyboard.sample(4).join("  ").gsub("Q ", "Qu") + " "
    # else
    # # push the new letters to our rows
    #   row1 << emptyboard.sample(4).join("  ")
    #   row2 << emptyboard.sample(4).join("  ")
    #   row3 << emptyboard.sample(4).join("  ")
    #   row4 << emptyboard.sample(4).join("  ")
    # end
    #




    #return our rows for tests
    return row1, row2, row3, row4

  end


  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s

    #new string for output
    output_row1 = String.new
    output_row2 = String.new
    output_row3 = String.new
    output_row4 = String.new

    #new variable to preserve spaces
    letter_array = @spaces

    # push the new letters to our rows
    output_row1 << letter_array.sample(4).join
    output_row2 << letter_array.sample(4).join
    output_row3 << letter_array.sample(4).join
    output_row4 << letter_array.sample(4).join

    # return four rows to pass tests
    return output_row1, output_row2, output_row3, output_row4


  end


end



 board = BoggleBoard.new
 puts board.to_s
 puts board.shake!
 puts board.to_s
