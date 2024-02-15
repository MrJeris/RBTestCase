//
//  PercentageText.swift
//  RBTestCase
//
//  Created by Ruslan Magomedov on 14.02.2024.
//

import SwiftUI

struct PercentageText: View {
    let total: Int
    let gameResult: Int
    
    var body: some View {
        Text("\(gameResult) (\(String(format: "%.0f" ,(Double(gameResult) / Double(total) * 100).rounded()))%)")
            .font(.caption)
            .fontWeight(.bold)
            .lineLimit(1)
    }
}

#Preview {
    PercentageText(total: 32, gameResult: 12)
}
