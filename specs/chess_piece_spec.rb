require './specs/spec_helper'

describe 'ChessPiece' do
  it 'should do something' do
    piece = ChessPiece.new
    expect(piece.possible_next_moves).to eq(['A1'])
  end
end
