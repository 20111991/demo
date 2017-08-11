class WelcomeController < ApplicationController
  def index
  end

  def test
  	render json: {status: "ok"}
  end
end
