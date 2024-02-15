//
//  AverageCoefficientsViewModel.swift
//  RBTestCase
//
//  Created by Ruslan Magomedov on 14.02.2024.
//

import Foundation


class AverageCoefficientsViewModel: ObservableObject {
    
    //Константы для изменения
    @Published var coefficients = AverageCoefficients(
        coefficientWins: 1.94,
        coefficientLose: 2.17,
        coefficientRefund: 1.26
    )

    var coefficientsTotal: Double {
        return coefficients.coefficientWins + coefficients.coefficientLose + coefficients.coefficientRefund
    }
    
    func coefficient(for type: AverageCoefficientType) -> Double {
        switch type {
        case .win:
            return coefficients.coefficientWins
        case .lose:
            return coefficients.coefficientLose
        case .refund:
            return coefficients.coefficientRefund
        }
    }
}
