//
//  WinsLoosesBookmakersCellView.swift
//  RBTestCase
//
//  Created by Ruslan Magomedov on 14.02.2024.
//

import SwiftUI

struct WinsLoosesBookmakersCellView: View {
    @StateObject var vm = WinsLoosesBookmakersViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("Выигрыши/проигрыши по букмекерам")
                .fontWeight(.semibold)
            
            HStack(alignment: .bottom) {
                Image(.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 24)
                
                Text("\(vm.countOfTotal) ставки")
                    .fontWeight(.medium)
            }
            
            WinsLoosesBookmakersElement(total: vm.countOfTotal, model: vm.model)
        }
        .padding()
        .border(.primary)
        .padding(6)
    }
}

#Preview {
    WinsLoosesBookmakersCellView()
}
