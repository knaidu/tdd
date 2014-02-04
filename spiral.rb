class Matrix
  attr_accessor :matrix
  def initialize(matrix)
    raise RuntimeError 'Invalid matrix' unless matrix
    @matrix = matrix
  end

  def print_spiral
    spiral_order(0, @matrix[0].size-1, 0, @matrix.size-1)
  end

  def spiral_order(row_start, row_end, col_start, col_end)
    if (row_start > row_end || col_start > col_end)
      return
    end

    output_string ||= String.new

    # Print top row
    col = col_start
    row = row_start
    while col <= col_end
      output_string += "#{@matrix[row][col]}"
      col += 1
    end

    # Print right row
    col -= 1
    row += 1
    while row <= row_end
      output_string += "#{matrix[row][col]}"
      row += 1
    end

    # Print bottom row
    row -= 1
    col -= 1
    while col >= col_start
      output_string += "#{matrix[row][col]}"
      col -= 1
    end

    # Print left row
    col += 1
    row -= 1
    while row >= row_start+1
      output_string += "#{matrix[row][col]}"
      row -= 1
    end

    result = spiral_order(row_start+1, row_end-1, col_start+1, col_end-1)
    return "#{output_string}#{result}"
  end
end