# This class finds the tour taken by knight
class KnightsTour
  puts 'Enter size of chess'
  @@size = gets.chomp
  @@chessboard = Array.new(@@size.to_i) { Array.new(@@size.to_i, false) }
  def knights_tour(x, y, fromx, fromy)
    unless x < 0 || y < 0 || x >= @@size.to_i || y >= @@size.to_i
      if @@chessboard[x][y] == false
        @@chessboard[x][y] = true
        puts "#{x} , #{y} visited form #{fromx} #{fromy}"
        knights_tour(x + 2, y + 1, x, y)
        knights_tour(x + 2, y - 1, x, y)
        knights_tour(x - 2, y + 1, x, y)
        knights_tour(x - 2, y - 1, x, y)
        knights_tour(x + 1, y + 2, x, y)
        knights_tour(x + 1, y - 2, x, y)
        knights_tour(x - 1, y + 2, x, y)
        knights_tour(x - 1, y - 2, x, y)
      end
    end
  end
end
knightobject = KnightsTour.new
knightobject.knights_tour(0, 0, 0, 0)