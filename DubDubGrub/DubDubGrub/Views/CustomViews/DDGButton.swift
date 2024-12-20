//
//  DDGButton.swift
//  DubDubGrub
//
//  Created by Dongik Song on 12/20/24.
//

import SwiftUI

struct DDGButton: View {
    
    var title: String
    
    var body: some View {
        Text("title")
            .bold()
            .frame(width: 200, height: 44)
            .background(Color.brandPrimary)
            .foregroundStyle(.white)
            .cornerRadius(8)
    }
}

#Preview {
    DDGButton(title: "test button")
}
