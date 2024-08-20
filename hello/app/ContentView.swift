//
//  ContentView.swift
//  Hello
//
//  Created by Ivan Inozemtsev on 07.08.2024.
//

import SwiftUI
import Dart

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! \(GetDartMagic())")
            // Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
