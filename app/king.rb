class King < ChessPiece
  def possible_next_moves
    valid_indices.map { |col, row| "#{COLUMNS[col]}#{ROWS[row]}" }.sort
  end

  private

  def valid_indices
    col_idx = COLUMNS.index(column)
    row_idx = ROWS.index(row)
    [
      [col_idx + 1, row_idx], [col_idx - 1, row_idx],
      [col_idx, row_idx + 1], [col_idx, row_idx - 1],
      [col_idx + 1, row_idx + 1], [col_idx - 1, row_idx + 1],
      [col_idx + 1, row_idx - 1], [col_idx - 1, row_idx - 1]
    ].select { |col, row| within_boundary?(col, row) }
  end
end
