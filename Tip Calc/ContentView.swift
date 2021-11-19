//
//  ContentView.swift
//  Tip Calc
//
//  Created by Alexandr Basan on 19/11/21.
//

import SwiftUI

struct ContentView: View {
    @State var total = "20"
    @State var tipPercent: Double = 15.0
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.title)
                .bold()
            
            HStack {
                Text("$")
                TextField("Total", text: $total)
                    .border(Color.black, width: 0.25)
            }
            .padding()
            
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent)) %")
            }
            .padding()
            
            Text("Tip Ammount: \(total)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
