//
//  TabBarView.swift
//  TestPage
//
//  Created by Meet's Mac on 12/09/23.
//

import SwiftUI

struct MainTab: View {
    @State private var selected = 0
    var body: some View {
        HStack() {
            VStack{
                Image(systemName: "house")
                Text("Home")
            }
            Spacer()
            VStack {
                Image(systemName: "chart.bar")
                Text("My Network")
            }
            Spacer()
            VStack {
                Image(systemName: "cross.circle")
                Text("Post")
            }
            Spacer()
            VStack {
                Image(systemName: "bell")
                Text("Notificatons")
            }
            Spacer()
            VStack {
                Image(systemName: "bag")
                Text("Jobs")
            }
        }
        .font(.footnote)
        .padding(20)
    }
}

struct MainTab_Previews: PreviewProvider {
    static var previews: some View {
        MainTab()
    }
}
