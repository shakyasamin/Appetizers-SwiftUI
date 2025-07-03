//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 03/07/2025.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimaryColor)
            .controlSize(.large)
    }
}

extension View {
    func standardButtonStyle() -> some View {
        modifier(StandardButtonStyle())
    }
}
