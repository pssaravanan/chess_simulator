class Pawn < ChessPiece
  def possible_next_moves
    curr_row_idx = ROWS.index(row)
    next_row_idx = curr_row_idx + 1
    return [] if next_row_idx >= ROWS.size

    ["#{column}#{ROWS[next_row_idx]}"]
  end
end
