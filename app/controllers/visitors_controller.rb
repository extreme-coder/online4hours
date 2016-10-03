class VisitorsController < ApplicationController
  def vote_counter(votes)
    vote_counts = Hash.new
    votes.each do|vote|
      if vote_counts.key?(vote)
        vote_counts[vote] += 1
      else
        vote_counts[vote] = 1
      end
    end
    return vote_counts
  end



  def alternative_vote

  end

  def alternative_vote_submit
    all_ballots = []
    ballots = []

    ballot_string = params[:av][:votes]

    ballot_string.split(/\n/).each do |ar1|
      all_ballots << ar1.split(',').map{|a| a.chomp}
    end


    loop do
      all_ballots.each do |ballot|
        ballots << ballot[0]
      end

      votes = vote_counter(ballots)
      @winner = votes.max_by{|k,v| v }[0]
      win_percentage = votes[@winner] * 100 / all_ballots.count
      if win_percentage >= 50
        break
      end

      loser = votes.min_by{|k,v| v }[0]
      all_ballots.each do |ballot|
        if ballot[0] == loser
          ballot.shift
        end
      end
    end
  end



end
