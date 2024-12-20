//
//  View+Extension.swift
//  DubDubGrub
//
//  Created by Dongik Song on 12/20/24.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}
