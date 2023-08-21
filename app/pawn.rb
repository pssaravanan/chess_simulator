class Pawn < ChessPiece
  def possible_next_moves
    next_moves_in_direction(col_dir: 0, row_dir: 1, no_moves: 1)
  end
end
