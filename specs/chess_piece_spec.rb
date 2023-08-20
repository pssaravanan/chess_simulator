require './specs/spec_helper'

describe 'ChessPiece' do
  context '#initialize' do
    it 'should initialize a chess piece with position' do
      piece = ChessPiece.new('A1')
      expect(piece.position).to eq('A1')
    end

    it 'should raise error if row is greater than chess board boundary' do
      expect{
        ChessPiece.new('I1')
      }.to raise_error 'error: invalid_position'
    end

    it 'should raise error if col is greater than chess board boundary' do
      expect{
        ChessPiece.new('A9')
      }.to raise_error 'error: invalid_position'
    end

    it 'should raise error if position string length greater than 2' do
      expect{
        ChessPiece.new('A10')
      }.to raise_error 'error: invalid_position'
    end
  end
end
