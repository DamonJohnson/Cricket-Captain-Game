def runs(score)
    case score
    when 10..100 then return 6
    when 3..9 then return 4
    when -1..2 then return 3
    when -8..0 then return 2
    when -20..-9 then return 1
    else return 0
    end
end



puts runs(24)
puts runs(5)
puts runs(0)
puts runs(-5)
puts runs (-14)
puts runs (-28)