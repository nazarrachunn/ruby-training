# frozen_string_literal: true

require 'nim/game'

RSpec.describe Nim::Game do
  describe '#start' do
    let(:game) { described_class.new }

    context 'with no players' do
      allow(game).to receive(:determine_player_one_name) { '' }
      allow(game).to receive(:determine_player_two_name) { '' }

      it 'fails to create a game' do
        expect { game.start }.to raise_error(GameSetupError)
      end
    end

    context 'with 1 player' do
      allow(game).to receive(:determine_player_one_name) { 'Player One' }
      allow(game).to receive(:determine_player_two_name) { '' }

      it 'fails to create a game' do
        expect { game.start }.to raise_error(GameSetupError)
      end
    end

    context 'with 2 identically named players' do
      allow(game).to receive(:determine_player_one_name) { 'Player One' }
      allow(game).to receive(:determine_player_two_name) { 'Player One' }

      it 'fails to create a game' do
        expect { game.start }.to raise_error(PlayerNameError)
      end
    end

    context 'with 2 different players' do
      allow(game).to receive(:determine_player_one_name) { 'Player One' }
      allow(game).to receive(:determine_player_two_name) { 'Player Two' }

      it 'creates a game' do
        expect { game.start }.not_to raise_error
      end

      it 'assigns Player 1 as the active player' do
        expect { game.start }.to change(:active_player).to(:player_one)
      end

      it 'creates the starting Board' do
        game.start

        expect(game.board).to be_a(Nim::Board)
      end
    end
  end
end
