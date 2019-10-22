$userpoints = 0
$computerpoints = 0

def Coinflip
    print "Heads or Tails?: "
    userGuess = gets.chomp

    if userGuess.upcase == "HEADS" or userGuess.upcase == "TAILS" ### I couldn't get the != to work, so I just remade it
      ### This is blank because it does nothing, It's just a check to see
      ### If the user chose one of the answers
    else
      print "I said Heads or Tails, not '#{userGuess}' \n" ### You can remove this and do whatever, that was just what I was checking with
      print "Try is again \n"
      Coinflip()
    end

    if rand(0..1) == 0
        coin = "Heads"
    else
        coin = "Tails"
    end

    if coin.to_s == userGuess
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
