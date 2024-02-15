//
//  AverageCoefficientElement.swift
//  RBTestCase
//
//  Created by Ruslan Magomedov on 14.02.2024.
//

import SwiftUI

struct AverageCoefficientElement: View {
    let total: Double
    let coefficient: Double
    let text: String
    let color: Color
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: 10)
                    .foregroundColor(.gray.opacity(0.4))
                    .cornerRadius(2)
                
                Rectangle()
                    .frame(
                        width: min((coefficient / total) * geometry.size.width, geometry.size.width),
                        height: 10
                    )
                    .foregroundColor(color)
                    .cornerRadius(2)
            }
        }
        .frame(height: 10)
    }
}

#Preview {
    AverageCoefficientElement(total: (1.94 + 2.17 + 1.26), coefficient: 2.17, text: "Возврат", color: .gray)
}
