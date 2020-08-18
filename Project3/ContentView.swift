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
    
    var body: some View {
    
        DatePicker("please enter the date", selection: $wakeUp, in: Date()...)
        .labelsHidden()
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
}
