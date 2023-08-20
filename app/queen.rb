class Queen < ChessPiece
  def possible_next_moves
    (horizontal_cells + vertical_cells + diagonal_cells).sort
  end

  private

  def horizontal_cells
    next_moves = []
    next_cell(0, 1) do |position|
      next_moves << position
    end
    next_cell(0, -1) do |position|
      next_moves << position
    end
    next_moves
  end

  def vertical_cells
    next_moves = []
    next_cell(1, 0) do |position|
      next_moves << position
    end
    next_cell(-1, 0) do |position|
      next_moves << position
    end
    next_moves
  end

  def diagonal_cells
    next_moves = []
    next_cell(1, 1) do |position|
      next_moves << position
    end
    next_cell(-1, -1) do |position|
      next_moves << position
    end
    next_cell(-1, 1) do |position|
      next_moves << position
    end
    next_cell(1, -1) do |position|
      next_moves << position
    end
    next_moves
  end

  def next_cell(col_dir, row_dir)
    next_col_idx = COLUMNS.index(column) + col_dir
    next_row_idx = ROWS.index(row) + row_dir
    while within_boundary?(next_col_idx, next_row_idx)
      yield("#{COLUMNS[next_col_idx]}#{ROWS[next_row_idx]}")
      next_col_idx += col_dir
      next_row_idx += row_dir
    end
  end
end
