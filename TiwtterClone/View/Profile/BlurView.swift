//
//  BlurView.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/04/24.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
        return view
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
         
    }
}

#Preview {
    BlurView()
}
