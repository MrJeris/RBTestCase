//
//  MainView.swift
//  RBTestCase
//
//  Created by Ruslan Magomedov on 14.02.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 36) {
            AverageCoefficientsCellView()
            WinsLoosesBookmakersCellView()
        }
    }
}

#Preview {
    MainView()
}
