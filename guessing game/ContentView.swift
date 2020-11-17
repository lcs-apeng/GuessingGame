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
       
        NavigationView {
        
        VStack{
        
            Text("I'm choosing a number between 1 and 100. Guess what it is!")
                .font(.title)
                .padding([.top, .leading, .bottom], 20.0)
            
            TextField("Enter you guess here...",
                      text: $theUserGuess)
                .padding(.leading, 108.0)
            
            Button("Submit Guess") {
                //Check the guess
            }
            
            Text("You guessed \(theUserGuess).")
                .font(.title)
            
            Spacer()
            
        }
        .navigationTitle("Guesssing Game")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
