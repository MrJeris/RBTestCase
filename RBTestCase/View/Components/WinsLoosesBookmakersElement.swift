//
//  WinsLoosesBookmakersElement.swift
//  RBTestCase
//
//  Created by Ruslan Magomedov on 14.02.2024.
//

import SwiftUI

struct WinsLoosesBookmakersElement: View {
    let total: Int
    let model: WinsLoosesBookmakers
    
    var spacing: CGFloat = 6
    
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: spacing) {
                BarView(color: .green, width: calculateWidth(geometry, model.countOfWins), total: total, gameResult: model.countOfWins)
                BarView(color: .red, width: calculateWidth(geometry, model.countOfLose), total: total, gameResult: model.countOfLose)
                BarView(color: .gray, width: calculateWidth(geometry, model.countOfRefund), total: total, gameResult: model.countOfRefund, alignment: .trailing)
            }
        }
        .frame(height: 40)
    }
    
    private func calculateWidth(_ geometry: GeometryProxy, _ value: Int) -> CGFloat {
        return (geometry.size.width - spacing * 2) * CGFloat(Double(value) / Double(total))
    }
}

#Preview {
    WinsLoosesBookmakersElement(total: 32, model: WinsLoosesBookmakers(
        countOfWins: 16,
        countOfLose: 11,
        countOfRefund: 5
    ))
}
