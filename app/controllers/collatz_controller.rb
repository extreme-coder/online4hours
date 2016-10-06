class CollatzController < ApplicationController
  def collatz

  end

  def collatz_submit
    @collatz = Collatz.new(params[:collatz][:num].to_i)

  end
end