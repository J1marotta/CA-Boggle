boggle_dice_letters = [["A","A","E","E","G","N"],
                      ["E","L","R","T","T","Y"],
                      ["A","O","O","T","T","W"],
                      ["A","B","B","J","O","O"],
                      ["E","H","R","T","V","W"],
                      ["C","I","M","O","T","U"],
                      ["D","I","S","T","T","Y"],
                      ["E","I","O","S","S","T"],
                      ["D","E","L","R","V","Y"],
                      ["A","C","H","O","P","S"],
                      ["H","I","M","N","Q","U"],
                      ["E","E","I","N","S","U"],
                      ["E","E","G","H","N","W"],
                      ["A","F","F","K","P","S"],
                      ["H","L","N","N","R","Z"],
                      ["D","E","I","L","R","X"]]


class BoggleDice

	def initialize(sides)
		@sides = sides
	end


	def rolldice
		@sides.sample
	end

end


mydice = boggle_dice_letters.map { |die| BoggleDice.new(die) }
mydice.each { |die| puts die.rolldice }
