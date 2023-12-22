# frozen_string_literal: true

require 'pp'

module AoC2023
  module Puzzles
    # For Day 22, we're playing magical Jenga.
    class SandSlabs
      def self.day22
        stack = File.open('input/day22.txt') { |file| new file }
        puts "Day  22, Part One: #{ stack.consider_bricks } bricks could be safely chosen as the one to get disintegrated."
        # puts "Day  22, Part Two: #{ stack.total_winnings_with_joker } are the new total winnings."
        puts
      end

      def initialize(file)
        @lines = file.readlines(chomp: true)
        @stack = @lines.map { |line| line.split('~').map { |brick| brick.split(',').map(&:to_i) } }
      end

      def consider_bricks
        PP.pp @stack, $stdout, 80
        5
      end
    end
  end
end
