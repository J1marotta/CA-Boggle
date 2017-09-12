class BoggleBoard

  def initialize
    @board= [
    @topline = ["_","_","_","_"],
    @second = ["_","_","_","_"],
    @third = ["_","_","_","_"],
    @fourth = ["_","_","_","_"]
    ]
  end

  def shake!
    chars = ("A".."Z").to_a
    @board.each do |i|
      i.each do |j|
        j.gsub! "_", chars.sample
      end
    end

    puts @topline.join
    puts @second.join
    puts @third.join
    puts @fourth.join

  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    puts
    puts @topline.join
    puts @second.join
    puts @third.join
    puts @fourth.join
    puts
  end
end


#
# class dice
#
#   def initialize
#   end
# end





board = BoggleBoard.new
board.to_s
board.shake!
