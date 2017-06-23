module GamesHelper
  def sort_status(status = 1)
    case status
    when 1
      @games = Game.all.sort_by{ |game| game.likes }
    when 2
      @games = Game.all.sort_by{ |game| game.owners.count }
    when 3
      @games = Game.where()
    end
  end
end
