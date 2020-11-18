//
//  ContentView.swift
//  guessing game
//
//  Created by amelia peng on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    
    //The guess made by the user
    @State private var theUserGuess = ""
    
    //The number that the user should guess,
    @State private var target = Int.random(in: 1...100)
    
    //Feedback to user
    @State private var feedback = ""
    
    //keep track of if the game is over...
    @State private var gameOver = false
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                Text("I'm choosing a number between 1 and 100. Guess what it is!")
                    .font(.title)
                    .padding([.top, .leading, .bottom], 20.0)
                
                TextField("Enter you guess here.",
                          text: $theUserGuess)
                    .padding(.leading, 108.0)
                
                Button("Submit Guess") {
                    //Check the guess
                    checkGuess()
                }
                
                Text("You guessed \(theUserGuess).")
                    .font(.title)
                
                Text("\(feedback)")
                    .foregroundColor(Color.black)
                
                if gameOver == true {
                    Button("Reset Game") {
                        resetGame()
                    }
                }
                
                
                
                Spacer()
                
            }
            .navigationTitle("Guesssing Game")
            
        }
        
    }
    
    //check what the user guessed against the target
    func checkGuess() {
        
        //See if the user give us a integer in the expected range.
        guard let givenInteger = Int(theUserGuess) else {
            feedback = "Please provide a integer between 1 and 100."
            return
        }
        guard givenInteger > 0, givenInteger < 101 else {
            feedback = "Please provide a integer between 1 and 100."
            return
        }
        
        if givenInteger == target{
            feedback = "You Gessed it!"
        }
        
        else if givenInteger > target{
            feedback = "Too high"
            gameOver = true
        }
        
        else if givenInteger < target{
            feedback = "Too low"
        }
    }
    
    
    //reset the game
    func resetGame() {
        
        //pick a ramdom number
        target = Int.random(in: 1...100)
        
        //clear out the old feedback from the prior round
        theUserGuess = ""
        feedback = ""
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
