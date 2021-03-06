//
//  CardsView.swift
//  Photo Collage
//
//  Created by Тимур Чеберда on 06.06.2021.
//

import SwiftUI

struct CardsView: View {
    
    @EnvironmentObject var viewState: ViewState
    
    var body: some View {
        ZStack {
            CardsListView()
            if !viewState.showAllCards {
                SingleCardView()
            }
        }
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
            .environmentObject(ViewState())
    }
}

