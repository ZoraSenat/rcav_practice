Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  #The square of a particular NUMBER lives at the URL /square/NUMBER
  get("/square/:number", { :controller => "calculations", :action => "square" })

  #The square root of a particular NUMBER lives at the URL /square_root/NUMBER
    get("/square_root/:number", { :controller => "calculations", :action => "square_root" })

  #A random number within a range, MIN to MAX, lives at the URL /random/MIN/MAX
  get("/random/:min/:max", { :controller => "calculations", :action => "random" })

  #The monthly loan payment, given an annual interest rate in basis points, or hundredths of a percent, a number of years, and a principal amount, lives at the URL /payment/INTEREST_RATE/NUMBER_OF_YEARS/PRINCIPAL_VALUE
  get("/payment/:interest_rate/:years/:principal", { :controller => "calculations", :action => "payment" })

end
