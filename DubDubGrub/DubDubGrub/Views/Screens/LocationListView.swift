//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Dongik Song on 12/20/24.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { item in
                    NavigationLink(destination: LocationDetailView()) {
                        LocationCell()
                    }
                }
            }
            .navigationTitle("Grub Spots")
        }
    }
}

#Preview {
    LocationListView()
}


