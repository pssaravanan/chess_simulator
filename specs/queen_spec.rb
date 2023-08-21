require './specs/spec_helper'

describe Queen do
  it_behaves_like 'a chess piece', Queen
  context '#possible_next_moves' do
    it 'should return possible next moves' do
      expect(Queen.new('E4').possible_next_moves).to eq(%w[A4 B4 C4 D4 F4 G4 H4 E1 E2 E3 E5 E6 E7
                                                           E8 A8 B7 C6 D5 F3 G2 H1 B1 C2 D3 F5 G6 H7].sort)
    end

    it 'should return possible next moves when queen at corner' do
      expect(Queen.new('H1').possible_next_moves).to eq(%w[A1 B1 C1 D1 E1 F1 G1 H8 H7 H6 H5 H4 H3 H2 A8 B7
                                                           C6 D5 E4 F3 G2].sort)
      expect(Queen.new('A8').possible_next_moves).to eq(%w[A1 A2 A3 A4 A5 A6 A7 B8 C8 D8 E8 F8 G8 H8 B7 C6 D5 E4 F3 G2
                                                           H1].sort)
      expect(Queen.new('A1').possible_next_moves).to eq(%w[A2 A3 A4 A5 A6 A7 A8 B1 C1 D1 E1
                                                           F1 G1 H1 B2 C3 D4 E5 F6 G7 H8].sort)
      expect(Queen.new('H8').possible_next_moves).to eq(%w[A8 B8 C8 D8 E8 F8 G8 H7 H6 H5 H4 H3 H2 H1
                                                           A1 B2 C3 D4 E5 F6 G7].sort)
    end

    it 'should return possible next moves when queen at any side' do
      expect(Queen.new('A5').possible_next_moves).to eq(%w[A1 A2 A3 A4 A6 A7 A8 B4 C3 D2 E1 B6 C7 D8
                                                           B5 C5 D5 E5 F5 G5 H5].sort)
      expect(Queen.new('H2').possible_next_moves).to eq(%w[H1 H3 H4 H5 H6 H7 H8 G1 G3 F4 E5 D6 C7 B8
                                                           A2 B2 C2 D2 E2 F2 G2].sort)
    end
  end
end
