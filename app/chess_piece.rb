class ChessPiece
  attr_accessor :position

  def initialize(position)
    raise 'error: invalid_position' unless position_valid?(position)

    @position = position
  end

  def possible_next_moves
    raise 'base class'
  end

  private

  def position_valid?(position)
    col, row = position.to_s.split('')
    position.to_s.length == 2 && (valid_columns.include?(col) && valid_rows.include?(row))
  end

  def valid_columns
    ('A'..'H').to_a
  end

  def valid_rows
    ('1'..'8').to_a
  end
end
