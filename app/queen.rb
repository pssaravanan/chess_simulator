class Queen < ChessPiece
  def possible_next_moves
    horizontal_moves = next_moves_in_direction(col_dir: 1, row_dir: 0) + next_moves_in_direction(col_dir: -1, row_dir: 0)
    vertical_moves = next_moves_in_direction(col_dir: 0, row_dir: 1) + next_moves_in_direction(col_dir: 0, row_dir: -1)
    diagonal_moves = next_moves_in_direction(col_dir: 1, row_dir: 1) + next_moves_in_direction(col_dir: -1, row_dir: -1) + \
                     next_moves_in_direction(col_dir: 1, row_dir: -1) + next_moves_in_direction(col_dir: -1, row_dir: 1)
    (horizontal_moves + vertical_moves + diagonal_moves).sort
  end
end
