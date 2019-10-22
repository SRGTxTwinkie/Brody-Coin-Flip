$userpoints = 0
$computerpoints = 0

def Coinflip
    print "Heads or Tails? "
    guess = gets.chomp

    if guess != "Heads" or guess != "Tails"
    print "I said heads or tails buddy not whatever you want"
    end

    if rand(0..1) == 0
        coin = "Heads"
    else
        coin = "Tails"
    end

    if coin.to_s == guess.to_s
        print "The flip is " + coin.to_s + "! You win! \n"
        $userpoints += 1
    else
        print "The flip is " + coin.to_s + "! You Lose! \n"
        $computerpoints += 1
    end

    print "Player Points: " , $userpoints , "\n"
    print "Computer Points: " , $computerpoints , "\n"
    Coinflip()
end
Coinflip()
