def shoot(results_array)
    p1_score, p2_score = 0, 0

    results_array.each do |results|
        results[1] ? multi = 2 : multi = 1

        results[0][:P1].scan(/X+/) { |x| p1_score += (x.length * multi) }
        results[0][:P2].scan(/X+/) { |x| p2_score += (x.length * multi) }
    end
    return "Draw!" if p1_score == p2_score
    p1_score > p2_score ? "Pete Wins!" : "Phil Wins!"
end

results_array = [[{"P1":"XX", "P2":"XO"}, true], [{"P1":"OX", "P2":"OO"}, false], [{"P1":"XX", "P2":"OX"}, true]]
print shoot(results_array)