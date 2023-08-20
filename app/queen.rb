class Queen < ChessPiece
  def possible_next_moves
    horizontal_moves = next_moves_in_direction(1, 0) + next_moves_in_direction(-1, 0)
    vertical_moves = next_moves_in_direction(0, 1) + next_moves_in_direction(0, -1)
    diagonal_moves = next_moves_in_direction(1, 1) + next_moves_in_direction(-1, -1) + \
                     next_moves_in_direction(1, -1) + next_moves_in_direction(-1, 1)
    (horizontal_moves + vertical_moves + diagonal_moves).sort
  end

  private

  def next_moves_in_direction(col_dir, row_dir)
    next_moves = []
    next_col_idx = COLUMNS.index(column) + col_dir
    next_row_idx = ROWS.index(row) + row_dir
    while within_boundary?(next_col_idx, next_row_idx)
      next_moves << "#{COLUMNS[next_col_idx]}#{ROWS[next_row_idx]}"
      next_col_idx += col_dir
      next_row_idx += row_dir
    end
    next_moves
  end
end
