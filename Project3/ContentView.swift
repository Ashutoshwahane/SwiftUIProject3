//
//  ContentView.swift
//  Project3
//
//  Created by Ashutosh Wahane on 18/08/20.
//  Copyright © 2020 Ashutosh Wahane. All rights reserved.
//

import SwiftUI


struct Title: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
        .padding()
            .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct WaterMark: ViewModifier {
    
    var text : String
    func body(content: Content) -> some View {
       ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}



extension View{
    func titleText() -> some View{
        return modifier(Title())
    }
    func waterMark(with text: String) -> some View{
        return modifier(WaterMark(text: text))
    }
}

struct ContentView: View {
    
    var body: some View {
    
        Color.blue
            .frame(width: 200, height: 200)
        .waterMark(with: "Hi Ashutosh")
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    }
}
