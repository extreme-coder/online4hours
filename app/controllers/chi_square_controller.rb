class ChiSquareController < ApplicationController
  def chi_square

  end

  def chi_square_submit
    @chi_square = ChiSquare.new
    @total_chi = @chi_square.chi_square(params[:av][:matrix_string].to_s)
  end
end

