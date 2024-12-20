//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Dongik Song on 12/20/24.
//

import SwiftUI

struct LocationDetailView: View {
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var location: DDGLocation
    
    var body: some View {
        
        VStack(spacing: 16) {
            BannerImageView(imageName: "default-banner-asset")
            
            HStack {
                AddressView(address: location.address)
    
                Spacer()
            }
            .padding(.horizontal)
            
            DescriptionView(description: location.description)
            
            ZStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundStyle(.secondary.opacity(0.1))
                
                HStack(spacing: 20) {
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                    }
                    
                    Link(destination: URL(string: location.websiteURL)!) {
                        LocationActionButton(color: .brandPrimary, imageName: "network")
                    }
                    
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                    }
                    
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                    }
                }
            }
            .padding(.horizontal)
            
            Text("Who's Here?")
                .bold()
                .font(.title2)
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    FirstNameAvatarView(firstName: "Sean")
                    FirstNameAvatarView(firstName: "Sean")
                    FirstNameAvatarView(firstName: "Kelly")
                    FirstNameAvatarView(firstName: "Sean")
                    FirstNameAvatarView(firstName: "Sean")
                    FirstNameAvatarView(firstName: "Sean")
                    FirstNameAvatarView(firstName: "Sean")
                }
            }
            
            Spacer()
        }
        .navigationTitle(location.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    NavigationView {
        LocationDetailView(location: DDGLocation(record: MockData.location))
    }
}

struct LocationActionButton: View {
    
    var color: Color
    var imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(color)
                .frame(width: 60, height: 60)
            
            Image(systemName: imageName)
                .resizable()
                .foregroundStyle(.white)
                .frame(width: 22, height: 22)
            
        }
    }
}

struct FirstNameAvatarView: View {
    
    var firstName: String
    
    var body: some View {
        VStack {
            AvatarView(size: 64)
            
            Text(firstName)
                .bold()
                .lineLimit(1)
                .font(.headline)
                .minimumScaleFactor(0.75)
        }
    }
}

struct BannerImageView: View {
    
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(height: 120)
    }
}

struct AddressView: View {
    
    var address: String
    
    var body: some View {
        Label(address, systemImage: "mappin.and.ellipse")
            .font(.caption)
            .foregroundStyle(.secondary)
    }
}

struct DescriptionView: View {
    
    var description: String
    
    var body: some View {
        Text(description)
            .lineLimit(3)
            .minimumScaleFactor(0.75)
            .frame(height: 70)
            .padding(.horizontal)
    }
}
