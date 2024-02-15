//
//  WinsLoosesBookmakersViewModel.swift
//  RBTestCase
//
//  Created by Ruslan Magomedov on 14.02.2024.
//

import Foundation

class WinsLoosesBookmakersViewModel: ObservableObject {
    
    //Константы для изменения
    @Published var model = WinsLoosesBookmakers(
        countOfWins: 16,
        countOfLose: 11,
        countOfRefund: 5
    )
    
    var countOfTotal: Int {
        return model.countOfWins + model.countOfLose + model.countOfRefund
    }
}
