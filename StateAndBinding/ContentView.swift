//
//  ContentView.swift
//  StateAndBinding
//
//  Created by Jiwon Yoon on 2023/03/07.
//

import SwiftUI

struct ContentView: View {
    @State var swiftyColor: Color = .red
    @State var swiftyOpacity: Double = 0.7
    var body: some View {
        VStack {
            SwiftyControls(
                swiftyColor: $swiftyColor,
                swiftyOpacity: $swiftyOpacity
            )
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .padding(25)
                .opacity(swiftyOpacity)
                .foregroundColor(.white)
                .background(swiftyColor)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct SwiftyControls: View {
    @Binding var swiftyColor: Color
    @Binding var swiftyOpacity: Double
    var body: some View {
        VStack {
            ColorPicker("Swifty Color", selection: $swiftyColor)
            Slider(value: $swiftyOpacity, in:0...1)
                .accentColor(swiftyColor)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
