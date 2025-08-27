class Api::V1::TestController < ApplicationController
  def test
    puts "logged"
    render json: { data: "hey" }
  end
end
