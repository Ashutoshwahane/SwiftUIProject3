//
//  ContentView.swift
//  Project3
//
//  Created by Ashutosh Wahane on 18/08/20.
//  Copyright © 2020 Ashutosh Wahane. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State private var wakeUp = Date()
    @State private var sleepAmount = 8.0
    @State private var coffeAmount = 1
    
    var body: some View {
        NavigationView{
            VStack{
                Text("When you want to wake up")
                    .font(.headline)
                
                DatePicker("Please Enter time",
                           selection: $wakeUp,
                           displayedComponents: .hourAndMinute
                            ).labelsHidden()
                
                Text("Desired amount of sleep")
                    .font(.headline)
                Stepper(value: $sleepAmount, in: 4...12, step: 0.25){
                    Text("\(sleepAmount, specifier: "%g") hours")
                }
                
                Text("Daily Coffe intake")
                    .font(.headline)
                Stepper(value: $coffeAmount, in: 1...20){
                    if coffeAmount == 1 {
                        Text("1 cups")
                    }else{
                        Text("\(coffeAmount) cups")
                    }
                }
            }
            
            .navigationBarTitle("BetterRest")
            .navigationBarItems(trailing:
                Button(action: calculateBedTime){
                    Text("Calculate")
                }
            )
        }
    }
    func calculateBedTime(){
        
    }
        
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
        ContentView()
            
        }
}
