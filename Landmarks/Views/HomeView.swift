//
//  ContentView.swift
//  Landmarks
//
//  Created by Reinhard Merfeld on 23.12.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        LandmarkList()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ModelData())
    }
}
