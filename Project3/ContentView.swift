//
//  ContentView.swift
//  Project3
//
//  Created by Ashutosh Wahane on 18/08/20.
//  Copyright © 2020 Ashutosh Wahane. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State private var wakeUp = defaultWakeUpTime
    @State private var sleepAmount = 8.0
    @State private var coffeAmount = 1
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    @State private var pickerNumOfCoffe = ["1","2","3","4","5","6","7","8","9"]
    
    
    var body: some View {
        NavigationView{
            Form{
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
                
                Picker(selection: $coffeAmount, label: Text("Daily Coffe Intake")){
                    ForEach(0 ..< pickerNumOfCoffe.count){
                        Text(self.pickerNumOfCoffe[$0])
                    }
                }
                
                Button(action: calculateBedTime){
                    Text("Calculate").font(.headline).foregroundColor(Color.green)
                }
                
                
            }
            
            .navigationBarTitle("BetterRest")
                .alert(isPresented: $showingAlert){
                    Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
    func calculateBedTime(){
        let model = SleepCalculator()
        let component = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
        let hour = (component.hour ?? 0) * 60 * 60
        let minute = (component.minute ?? 0) * 60
        
        do {
            let prediction = try
            model.prediction(wake:
                Double(hour+minute),
                             estimatedSleep: sleepAmount,
                             coffee: Double(coffeAmount))
            let sleepTime = wakeUp - prediction.actualSleep
            
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            
            alertMessage = formatter.string(from: sleepTime)
            alertTitle = "Your Ideal bed time is ...."
        }
        catch{
            alertTitle = "Error"
            alertMessage = "Sorry there was a problem calculating your bedtime."
        }
        showingAlert = true
        
    }
    
    static var defaultWakeUpTime: Date{
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date()
        
    }
        
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
        ContentView()
            
        }
}
