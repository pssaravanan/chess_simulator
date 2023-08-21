require 'singleton'
Dir['./app/**/*.rb'].each do |f|
  require f
end

class CommandLineApp
  include Singleton

  def start
    puts '~~Chess Simulator~~'
    puts 'Enter input of format `{Pawn|Queen|King}, {pos}` to find next possible moves or type `exit` to exit. '
    loop do
      input = gets.strip
      break if input == 'exit'

      puts process_input(input)
    end
  end

  def process_input(input)
    chess_piece_str, pos = input.split(',').map(&:strip)
    chess_piece = get_chess_piece(chess_piece_str, pos)
    "Next possible moves: #{chess_piece.possible_next_moves}"
  rescue StandardError => e
    e.message
  end

  private

  def get_chess_piece(chess_piece_str, pos)
    case chess_piece_str
    when 'Pawn'
      Pawn.new(pos)
    when 'King'
      King.new(pos)
    when 'Queen'
      Queen.new(pos)
    else
      raise 'error: invalid_command'
    end
  end
end
