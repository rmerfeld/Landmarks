//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Reinhard Merfeld on 23.12.22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var data = ModelData()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(data)
        }
    }
}
