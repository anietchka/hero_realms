class PlaygroundsController < ApplicationController
  def index
    @playgrounds = Playground.all
  end
  def show
    @playground = Playground.find(params[:id])
    @cards_pioche = Card.all.where(position: Position.find_by(name: "Pioche"))
    @pioche = Player.find_by(name: "Market")
    @player1 = Player.find_by(name: "Player_1")
    @player2 = Player.find_by(name: "Player_2")
    @player3 = Player.find_by(name: "Player_3")
    @player4 = Player.find_by(name: "Player_4")
  end
end
