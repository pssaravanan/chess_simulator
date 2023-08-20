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
end
