require './specs/spec_helper'

describe 'Pawn' do
  context '#possible_next_moves' do
    it 'should return posible next moves given pawn position' do
      piece = Pawn.new('G2')
      expect(piece.possible_next_moves).to eq(['G3'])
    end

    it 'should return posible next moves as empty when pawn at last row' do
      piece = Pawn.new('G8')
      expect(piece.possible_next_moves).to eq([])
    end
  end
end
