class Pawn < ChessPiece
  def possible_next_moves
    curr_row_idx = valid_rows.index(row)
    next_row_idx = curr_row_idx + 1
    return [] if next_row_idx >= valid_rows.size

    ["#{column}#{valid_rows[next_row_idx]}"]
  end
end
