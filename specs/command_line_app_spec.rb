require './specs/spec_helper'

describe CommandLineApp do
  context '#process_input' do
    it 'should return error message if input format is incorrect' do
      output = CommandLineApp.instance.process_input('Pawn G5')
      expect(output).to eq('error: invalid_command')
    end

    it 'should return error message when position is invalid' do
      pawn = double(Pawn)
      expect(Pawn).to receive(:new).with('E9').and_return(pawn)
      expect(pawn).to receive(:possible_next_moves).and_raise('error: invalid_position')
      output = CommandLineApp.instance.process_input('Pawn, E9')
      expect(output).to eq('error: invalid_position')
    end

    it 'should return next possible moves when input is valid' do
      pawn = double(Pawn)
      expect(Pawn).to receive(:new).with('G6').and_return(pawn)
      expect(pawn).to receive(:possible_next_moves).and_return(['G7'])
      output = CommandLineApp.instance.process_input('Pawn, G6')
      expect(output).to eq('Next possible moves: ["G7"]')
    end
  end
end
