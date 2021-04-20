//
//  ContentView.swift
//  TipCalculator
//
//  Created by Frank Solleveld on 20/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Binding Variables
    @State var total = "20"
    @State var tipPercent: Double = 15.0
    
    // MARK: Views
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.title)
            
            HStack {
                Text("€")
                TextField("Total", text: $total)
                    .border(Color.black, width: 0.25)
            }
            .padding()
            
            HStack {
                Slider(value: $tipPercent, in: 0...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            
            if let totalNum = Double(total) {
                Text("Tip Amount: €\(totalNum * tipPercent / 100, specifier: "%0.2f")")
            } else {
                Text("Please enter numerical values only.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
