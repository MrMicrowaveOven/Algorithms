NON_PARK = 0
PARK = 1
COUNTED_PARK = 2

def numberAmazonTreasureTrucks(rows, columns, grid)
    # To avoid mutating the parameter
    grid = grid.dup
    num_contiguous_parks = 0

    rows.times do |row_index|
        columns.times do |column_index|
            # If square has park
            if grid[row_index][column_index] == PARK
                num_contiguous_parks += 1
                grid.mark_connected_parks(row_index, column_index)
            end
        end
    end
    num_contiguous_parks
end

class Array
  def mark_connected_parks(row, column)
    self[row][column] = COUNTED_PARK
    # up
    if row > 0 && self[row - 1][column] == PARK
      mark_connected_parks(row - 1, column)
    end
    # down
    if row < num_rows - 1 && self[row + 1][column] == PARK
      mark_connected_parks(row + 1, column)
    end
    # left
    if column > 0 && self[row][column - 1] == PARK
      mark_connected_parks(row, column - 1)
    end
    # right
    if column < num_columns - 1 && self[row][column + 1] == PARK
      mark_connected_parks(row, column + 1)
    end
  end

  def num_rows
    length
  end

  def num_columns
    self[0].length
  end
end
