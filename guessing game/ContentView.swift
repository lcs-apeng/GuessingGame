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
    
    var body: some View {
       
        VStack{
            
        Text("Guessing Game")
        
        Text("I'm choosing a number between 1 and 100. Guess what it is!")
            
            TextField("Enter you guess here",
                      text: $theUserGuess)
            
            Button("Submit Guess") {
                //Check the guess
            }
            
            Text("You Guessed \(theUserGuess).")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
