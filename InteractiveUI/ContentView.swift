//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
   @State private var name = ""
    @State private var name2 = ""
    @State private var textTitle = "what is your name?"
    var body: some View {
        VStack {
      Text(textTitle)
                .font(.title)
            TextField("type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            TextField("Type your desired username", text: $name2)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("submit") {
                textTitle = "Welcome, \(name)!"
                name = ""
                name2 = ""

                }
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }

    }


#Preview {
    ContentView()
}
