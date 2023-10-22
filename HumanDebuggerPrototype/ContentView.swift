//
//  ContentView.swift
//  HumanDebuggerPrototype
//
//  Created by msheslow on 10/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var goal: String = ""
    @State private var kpi: String = ""
    @State private var hypothesis: String = ""
    @State private var experiment: String = ""
    
    @State private var isGoalSaved: Bool = false
    @State private var isKPISaved: Bool = false
    @State private var isHypothesisSaved: Bool = false
    @State private var isExperimentSaved: Bool = false

    var body: some View {
        VStack {
            HStack {
                Text("Goal: \(isGoalSaved ? goal : "Not Set") | KPI: \(isKPISaved ? kpi : "Not Set")")
                    .font(.headline)
                    .padding()
            }
            .background(Color.gray.opacity(0.5))
            
            if !isGoalSaved {
                HStack {
                    TextField("Enter Your Goal", text: $goal)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: { self.isGoalSaved = true }) {
                        Text("Save")
                    }
                }
                .padding()
            }
            
            if isGoalSaved && !isKPISaved {
                HStack {
                    TextField("Enter KPI for your Goal", text: $kpi)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: { self.isKPISaved = true }) {
                        Text("Save")
                    }
                }
                .padding()
            }
            
            if isKPISaved && !isHypothesisSaved {
                HStack {
                    TextField("Enter Your Hypothesis", text: $hypothesis)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: { self.isHypothesisSaved = true }) {
                        Text("Save")
                    }
                }
                .padding()
            }
            
            if isHypothesisSaved && !isExperimentSaved {
                HStack {
                    TextField("Enter Your Experiment", text: $experiment)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: { self.isExperimentSaved = true }) {
                        Text("Save")
                    }
                }
                .padding()
            }
        }
    }
}
