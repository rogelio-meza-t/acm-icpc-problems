#!/usr/bin/env ruby

if __FILE__ == $0

    first_line = gets
    a, b = first_line.split.first, first_line.split.last

    while a.to_i != 0 and b.to_i != 0
        remained_balls = gets

        numbers = (0..a.to_i).to_a
        possible_numbers = []
        remained_balls.split.map{|i| i.to_i}.repeated_combination(2).to_a.each do |b|
            possible_numbers << (b.first - b.last).abs
        end 

        puts (numbers - possible_numbers.uniq).empty? ? 'Y' : 'N'

        first_line = gets
        a, b = first_line.split.first, first_line.split.last
    end

end