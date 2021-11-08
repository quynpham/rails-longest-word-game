class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.shuffle[0..9].join(" ")
  end

  def score
    @word = params[:word]
    @letters = params[:letters]

    if @word.split.count == @letters.split.count
      "Sorry but TEST can't be built out of #{@letters}"
    elsif @repos.include?(@word) == false
      "Sorry but #{word} does not seem to be a valid English word..."
    else
      "Congratulations! #{@word} is a valid English word!"
    end
  end
end
