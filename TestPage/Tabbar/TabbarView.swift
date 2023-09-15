//
//  TabbarView.swift
//  TestPage
//
//  Created by Meet's Mac on 15/09/23.
//

import SwiftUI

struct TabbarView: View {
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
            ProfileView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            NetworkView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("My Network")
                }.tag(1)

            PostView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "cross.circle")
                    Text("Post")
                }.tag(2)

            NotificationsView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notifications")
                }.tag(3)

            JobsView()
                .onTapGesture {
                    self.selectedIndex = 4
                }
                .tabItem {
                    Image(systemName: "bag")
                    Text("Job")
                }.tag(4)

        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
