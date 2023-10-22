//
//  ContentView.swift
//  HumanDebuggerPrototype
//
//  Created by msheslow on 10/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var goal = ""
    
    var body: some View {
        VStack {
            TextField("Enter your goal", text: $goal)
                .padding()
                .border(Color.black)
            
            Text("Your goal is: \(goal)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
