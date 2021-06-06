//
//  Photo_CollageApp.swift
//  Photo Collage
//
//  Created by Тимур Чеберда on 06.06.2021.
//

import SwiftUI

@main
struct Photo_CollageApp: App {
    
    @StateObject var viewState = ViewState()
    
    var body: some Scene {
        WindowGroup {
            CardsView()
                .environmentObject(viewState)
        }
    }
}
