//
//  ContentView-ViewModel.swift
//  SwiftUI-Pattern
//
//  Created by Daniel Ayala on 22/5/22.
//

import SwiftUI

class ContentViewModel: BaseViewModelProtocol, ObservableObject {
    @MainActor
    @Published var title = ""
    @Published var isNavigationLinkActive: Bool = false
    @Published var destinationTag: UUID?
    @Published var isSheetActive: Bool  = false
    @Published var isAlertActive: Bool  = false


    @Published var viewMessage: String?

    func requestData() {
        
    }
}
