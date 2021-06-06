//
//  CardDetailView.swift
//  Photo Collage
//
//  Created by Тимур Чеберда on 06.06.2021.
//

import SwiftUI

struct CardDetailView: View {
    
    @EnvironmentObject var viewState: ViewState
    @State private var currentModal: CardModal?
    
    var content: some View {
        Group {
            Capsule()
                .foregroundColor(.yellow)
            Text("Resize Me!")
                .fontWeight(.bold)
                .font(.system(size: 500))
                .minimumScaleFactor(0.01)
                .lineLimit(1)
        }
        .resizableView()
    }
    
    var body: some View {
        content
            .modifier(CardToolbar(currentModal: $currentModal))
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView()
            .environmentObject(ViewState())
    }
}
