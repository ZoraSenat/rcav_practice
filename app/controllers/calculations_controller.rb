class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:number]
    @number_squared = (@number.to_i * @number.to_i)

  end

  def square_root
    @number = params[:number]
    @number_root = @number.to_i.
  end

  def random

  end

  def payment

  end


end
