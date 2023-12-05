class GreetingsController < ApplicationController
  def index
    render json: { greeting: Message.order('RANDOM()').first.content }
  end
end