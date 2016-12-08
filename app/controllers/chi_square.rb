class ChiSquare


  def chi_square(matrix_string)
    matrix = []
    matrix_string.split(/\n/).each do |ar1|
      matrix << ar1.split(',').map{|a| a.to_i}
    end
    chi_square_logic(matrix)
  end

  def chi_square_logic(matrix)
    column_sums = []
    row_sums = []
    matrix.each do|row|
      row_sums << row.inject(:+)
      row.each_with_index do |col_val, idx|
        if column_sums[idx] == nil
          column_sums[idx] = 0
        end
        column_sums[idx] += col_val
      end
    end
    grand_total = row_sums.inject(:+) * 1.0
    total_chi = 0
    matrix.each_with_index do |row, r_idx|
      row.each_with_index do |column, c_idx|
        observed = column
        expected = (row_sums[r_idx] * column_sums[c_idx])/grand_total
        total_chi += (observed - expected) ** 2 / expected
      end
    end
    total_chi
  end


end