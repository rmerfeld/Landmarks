//
//  ContentView.swift
//  Landmarks
//
//  Created by Reinhard Merfeld on 23.12.22.
//

import SwiftUI

struct HomeView: View {
    @State var selectedTab: Tab = .featured
    
    enum Tab {
        case list, featured
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ModelData())
    }
}
