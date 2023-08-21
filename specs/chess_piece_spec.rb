require './specs/spec_helper'

shared_examples 'a chess piece' do |chess_piece_klass|
  context "#{chess_piece_klass}#initialize" do
    it 'should initialize a chess piece with position' do
      piece = chess_piece_klass.new('A1')
      expect(piece.row).to eq('1')
      expect(piece.column).to eq('A')
    end

    it 'should raise error if row is greater than chess board boundary' do
      expect do
        chess_piece_klass.new('I1')
      end.to raise_error 'error: invalid_position'
    end

    it 'should raise error if col is greater than chess board boundary' do
      expect do
        chess_piece_klass.new('A9')
      end.to raise_error 'error: invalid_position'
    end

    it 'should raise error if position string length greater than 2' do
      expect do
        chess_piece_klass.new('A10')
      end.to raise_error 'error: invalid_position'
    end
  end
end
