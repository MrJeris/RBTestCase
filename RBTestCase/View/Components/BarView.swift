//
//  BarView.swift
//  RBTestCase
//
//  Created by Ruslan Magomedov on 14.02.2024.
//

import SwiftUI

struct BarView: View {
    let color: Color
    let width: CGFloat
    let total: Int
    let gameResult: Int
    
    var alignment: HorizontalAlignment = .leading
    
    var body: some View {
        VStack(alignment: alignment) {
            Rectangle()
                .fill(color)
                .frame(height: 10)
                .cornerRadius(2)
            
            PercentageText(total: total, gameResult: gameResult)
        }
        .frame(width: width)
    }
}

#Preview {
    BarView(color: .green, width: 200, total: 4, gameResult: 2)
}
