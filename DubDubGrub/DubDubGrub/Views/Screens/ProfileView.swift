//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by Dongik Song on 12/20/24.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var companyName = ""
    @State private var bio = ""
    
    var body: some View {
        VStack {
            ZStack {
                NameBackgroundView()
                
                HStack(spacing: 16) {
                    ZStack {
                        AvatarView(size: 84)
                        EditImage()
                    }
                    .padding(.leading, 12)
                    
                    VStack(spacing: 1) {
                        TextField("First Name", text: $firstName)
                            .profileNameStyle()
                        
                        TextField("Last Name", text: $lastName)
                            .profileNameStyle()
                        
                        TextField("Company Name", text: $companyName)
                            
                    }
                    .padding(.trailing, 16)
                }
                .padding()
 
            }
            
            VStack(alignment: .leading, spacing: 8) {
                
                CharavtersRemainView(currentCount: bio.count)
                
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.secondary, lineWidth: 1)
                    }
            }
            .padding(.horizontal, 20)
            
            Spacer()
            
            Button {
                
            } label: {
                DDGButton(title: "Create Profile")
            }

            
        }
        .navigationTitle("Profile")
    }
}

#Preview {
    NavigationView {
        ProfileView()
    }
}

struct NameBackgroundView: View {
    var body: some View {
        Color(.secondarySystemBackground)
            .frame(height: 130)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

struct EditImage: View {
    var body: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .scaledToFit()
            .frame(width: 14, height: 14)
            .foregroundStyle(.white)
            .offset(y: 28)
    }
}

struct CharavtersRemainView: View {
    
    var currentCount: Int
    
    var body: some View {
        Text("Bio: ")
            .font(.callout)
            .foregroundStyle(.secondary)
        +
        Text("\(100 - currentCount)")
            .bold()
            .font(.callout)
            .foregroundStyle(currentCount <= 100 ? Color.brandPrimary : Color(.systemPink))
        +
        Text(" Characters Remain")
            .font(.callout)
            .foregroundStyle(.secondary)
    }
}
