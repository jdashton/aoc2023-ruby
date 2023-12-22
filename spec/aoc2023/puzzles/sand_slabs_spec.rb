# frozen_string_literal: true

RSpec.describe AoC2023::Puzzles::SandSlabs do
  # noinspection SpellCheckingInspection
  context 'with provided test data' do
    subject(:stack) { described_class.new StringIO.new(<<~DATA) }
      1,0,1~1,2,1
      0,0,2~2,0,2
      0,2,3~2,2,3
      0,0,4~0,2,4
      2,0,5~2,2,5
      0,1,6~2,1,6
      1,1,8~1,1,9
    DATA

    it 'finds 5 as the number of bricks that could be safely chosen as the one to get disintegrated' do
      expect(stack.consider_bricks).to eq 5
    end
  end

  # context 'with actual input data' do
  #   subject(:map) { File.open('input/day21.txt') { |file| described_class.new file } }
  #
  #   it 'finds 3,615 as the number of garden plots that could be reached in 6 steps' do
  #     expect(map.count_steps(64)).to eq 3_615
  #   end
  # end
end
