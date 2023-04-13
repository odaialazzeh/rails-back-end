class RootController < ApplicationController
  def greeting
    greeting = Greeting.all.sample
    if greeting
      render json: { greeting: greeting.text }
    else
      render json: { greeting: 'No greetings found' }
    end
  end
end
