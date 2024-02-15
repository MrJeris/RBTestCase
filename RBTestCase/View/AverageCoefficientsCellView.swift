//
//  AverageCoefficientsCellView.swift
//  RBTestCase
//
//  Created by Ruslan Magomedov on 14.02.2024.
//

import SwiftUI

enum AverageCoefficientType: String, CaseIterable {
    case win = "Выигрыш"
    case lose = "Проигрыш"
    case refund = "Возврат"
    
    var color: Color {
        switch self {
        case .win:
            return .green
        case .lose:
            return .red
        case .refund:
            return .gray
        }
    }
}

struct AverageCoefficientsCellView: View {
    @StateObject var vm = AverageCoefficientsViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Средние коэффициенты")
                .fontWeight(.bold)
            
            HStack(spacing: 12) {
                VStack(spacing: 16) {
                    ForEach(AverageCoefficientType.allCases, id: \.self) { type in
                        AverageCoefficientElement(
                            total: vm.coefficientsTotal,
                            coefficient: vm.coefficient(for: type),
                            text: type.rawValue,
                            color: type.color
                        )
                    }
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    ForEach(AverageCoefficientType.allCases, id: \.self) { type in
                        Text(type.rawValue)
                            .foregroundColor(.secondary)
                    }
                }
                .foregroundColor(.black.opacity(0.6))
                
                VStack(alignment: .trailing, spacing: 4) {
                    ForEach(AverageCoefficientType.allCases, id: \.self) { type in
                        Text(String(format: "%.2f", vm.coefficient(for: type)))
                            .fontWeight(.semibold)
                    }
                }
            }
        }
        .padding()
        .border(.primary)
        .padding(6)
    }
}

#Preview {
    AverageCoefficientsCellView()
}
