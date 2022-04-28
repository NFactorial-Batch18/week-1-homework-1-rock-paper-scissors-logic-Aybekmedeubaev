import UIKit
import Darwin
import Foundation

enum Choices: CaseIterable {
    case scissors
    case paper
    case rock
}
//userChoice = "paper"

let ChoiceOfMachine = Choices.allCases.randomElement()!

func determineWinner(userChoice :String,
                     ChoiceOfMachine: Choices)
{
    if userChoice == "rock" && ChoiceOfMachine == .paper{
        print("You Lost")
    }else if userChoice == "rock" && ChoiceOfMachine == .rock
    {
        print("Drow!")
    }else if userChoice == "rock" && ChoiceOfMachine == .scissors
    {
        print("You win")
    }
//
    else if userChoice == "scissors" && ChoiceOfMachine == .paper
    {
        print("You Win")
    
    }else if userChoice == "scissors" && ChoiceOfMachine == .rock
    {
        print("You Lost")
        
    }else if userChoice == "scissors" && ChoiceOfMachine == .scissors{
        print("Drow!")
    }
//
    else if userChoice == "paper" && ChoiceOfMachine == .paper{
        print("Drow!")
    }else if userChoice == "paper" && ChoiceOfMachine == .scissors{
        print("You Lost")
    }else if userChoice == "paper" && ChoiceOfMachine == .rock{
        print("You Win")
    }
}

print("Please enter one of them:")
for choice in Choices.allCases {
    print(choice)
}

let input = readLine()


if input != nil {
    let userChoice = input
    determineWinner(userChoice: userChoice!, ChoiceOfMachine: ChoiceOfMachine)
}else{
    print("Incorrect date entry!")
}
