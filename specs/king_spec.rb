require './specs/spec_helper'

describe 'King' do
  context '#possible_next_moves' do
    it 'should return posible next moves given king position' do
      piece = King.new('D5')
      expect(piece.possible_next_moves).to eq(%w[C4 C5 C6 D4 D6 E4 E5 E6].sort)
    end

    it 'should return posible next moves when king is at corner of chess board' do
      expect(King.new('A1').possible_next_moves).to eq(%w[A2 B1 B2].sort)
      expect(King.new('H1').possible_next_moves).to eq(%w[G1 G2 H2].sort)
      expect(King.new('A8').possible_next_moves).to eq(%w[A7 B7 B8].sort)
      expect(King.new('H8').possible_next_moves).to eq(%w[G8 G7 H7].sort)
    end

    it 'should return posible next moves when king is at side of chess board' do
      expect(King.new('A4').possible_next_moves).to eq(%w[A5 B5 B4 B3 A3].sort)
      expect(King.new('H4').possible_next_moves).to eq(%w[H5 G5 G4 G3 H3].sort)
      expect(King.new('D1').possible_next_moves).to eq(%w[C1 C2 D2 E2 E1].sort)
      expect(King.new('D8').possible_next_moves).to eq(%w[C8 C7 D7 E7 E8].sort)
    end
  end
end
