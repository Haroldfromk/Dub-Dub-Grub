//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Dongik Song on 12/20/24.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            Tab("Map", systemImage: "map") {
                LocationMapView()
            }
            
            Tab("Locations", systemImage: "building") {
                LocationListView()
            }
            Tab("Profile", systemImage: "person") {
                ProfileView()
            }
        }
        .tint(.brandPrimary)
    }
}

#Preview {
    AppTabView()
}
