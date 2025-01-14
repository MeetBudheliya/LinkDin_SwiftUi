//
//  ContentView.swift
//  TestPage
//
//  Created by Meet's Mac on 12/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                NavigationLink {
                    ProfileView()
                } label: {
                    Text("Profile")
                }

            }
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
