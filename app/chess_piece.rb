class ChessPiece
  attr_accessor :row, :column

  ROWS = ('1'..'8').to_a.freeze
  COLUMNS = ('A'..'H').to_a.freeze

  def initialize(position)
    raise 'error: invalid_position' unless position_valid?(position)

    @column, @row = position.split('')
  end

  def possible_next_moves
    raise 'base class'
  end

  private

  def position_valid?(position)
    column, row = position.to_s.split('')
    position.to_s.length == 2 && (COLUMNS.include?(column) && ROWS.include?(row))
  end

  def within_boundary?(col, row)
    col < COLUMNS.length && col >= 0 && row < ROWS.size && row >= 0
  end

  def next_moves_in_direction(col_dir:, row_dir:, no_moves: Float::INFINITY)
    next_moves = []
    next_col_idx = COLUMNS.index(column) + col_dir
    next_row_idx = ROWS.index(row) + row_dir
    while within_boundary?(next_col_idx, next_row_idx) && next_moves.size < no_moves
      next_moves << "#{COLUMNS[next_col_idx]}#{ROWS[next_row_idx]}"
      next_col_idx += col_dir
      next_row_idx += row_dir
    end
    next_moves
  end
end
