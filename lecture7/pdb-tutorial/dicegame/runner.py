from .die import Die

class GameRunner:

    def __init__(self):
        self.dice = Die.create_dice(5)
        self.reset()

    def reset(self):
        self.round = 1
        self.wins = 0
        self.losses = 0

    def answer(self):
        return sum(die.value for die in self.dice)

    def run(self):
        consecutive_wins = 0
        while True:
            print("Round {}\n".format(self.round))

            for die in self.dice:
                die.roll()
                print(die.show())

            guess = input("Sigh. What is your guess?: ")
            guess = int(guess)

            if guess == self.answer():
                print("Congrats, you can add like a 5 year old...")
                self.wins += 1
                consecutive_wins += 1
            else:
                print("Sorry that's wrong")
                print("The answer is: {}".format(self.answer()))
                print("Like seriously, how could you mess that up")
                self.losses += 1
                consecutive_wins = 0
            print("Wins: {} Losses {}".format(self.wins, self.losses))
            self.round += 1

            if consecutive_wins == 6:
                print("You won... Congrats...")
                print("The fact it took you so long is pretty sad")
                break

            prompt = input("Would you like to play again? [Y/n]: ")

            if prompt == 'y' or prompt == '':
                continue
            else:
                break
