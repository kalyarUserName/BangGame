class HomeController < ApplicationController
  def index
    @games = Game.all
  end

  def login

  end
end