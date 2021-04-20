//
//  ContentView.swift
//  TipCalculator
//
//  Created by Frank Solleveld on 20/04/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.title)
            
            HStack {
                Text("€")
                Text("TextField")
            }
            .padding()
            
            HStack {
                Text("Slider")
                Text("%")
            }
            
            Text("Total Tip: ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
