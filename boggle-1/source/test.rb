class BoggleBoard

  def initialize
		# design empty board
  @topline = ["_","_","_","_"]
	end

	def shake
		# initalise dice
		dice1= ["A","A","E","E","G","N"]


		chars = ("A".."Z").to_a
		@topline.each do |i|
			i.gsub! "_", chars.sample
		end

		print @topline.join
		puts
		# print dice1

	end
end


board = BoggleBoard.new
board.shake










# 	side = dice1.sample
# 	@topline.gsub! "_", side
# 	side =
# 	puts @topline
# end
