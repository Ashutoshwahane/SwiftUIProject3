//
//  ContentView.swift
//  Project3
//
//  Created by Ashutosh Wahane on 18/08/20.
//  Copyright © 2020 Ashutosh Wahane. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    struct capsuleText: View {
        var text : String
    
        var body: some View{
            Text(text)
            .font(.largeTitle)
                .padding()
            .background(Color.gray)
            .foregroundColor(Color.white)
            .clipShape(Capsule())
        }
    }
    
    
    var body: some View {
        
        VStack(spacing: 10){
            capsuleText(text: "Ashutosh")
            capsuleText(text: "Dancer")
        }
        
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    }
}
