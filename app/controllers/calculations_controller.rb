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
    @number_root = Math.sqrt(@number.to_i)
  end

  def random
    @min = params[:min]
    @max = params[:max]
    @random = rand(@min.to_i..@max.to_i)
  end

  def payment
    #Parameters: {"interest_rate"=>"34", "years"=>"60", "principal"=>"30000"}
    @apr = params[:interest_rate].to_f/100
    @years = params[:years].to_f
    @principal = params[:principal].to_f
    @periods = @years*12
    @rate = @apr/12
 #fix math
    @payment = (@rate * @principal*((1+@rate)**@periods))/((1+@rate)**@periods-1).to_i
  end


end
