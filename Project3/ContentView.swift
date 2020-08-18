//
//  ContentView.swift
//  Project3
//
//  Created by Ashutosh Wahane on 18/08/20.
//  Copyright © 2020 Ashutosh Wahane. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var useRedText = true
    
    let myName = Text("Ashutosh Wahane")
    var internetName : some View{
    Text("Willskhlaifa")
    }
    
    var body: some View {
        
        
        VStack{
            myName.foregroundColor(Color.red).font(.headline)
            internetName.foregroundColor(Color.blue)
                .font(.title)
        }
            
        
//
//        Button("Namaste Ashutosh"){
//        // do nothing
//            print(type(of: self.body))
//        }
//            .frame(width: 200, height: 200)
//            .background(Color.red)
//
//        if self.useRedText{
//            return Text("Hello Ashutosh")
//                .background(Color.blue)
//        }else{
//            return Text("Hello Ashutosh")
//                .background(Color.red)
//        }
            
        
        
        
//        Text("Hello, World!")
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
